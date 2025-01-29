let State = {};
let Config = {};
$(document).ready(function() {
  const ShowCallScreen = (number, waiting) => {
    $(".screen-container").hide();
    $(".screen-container2 #number").text(number);
    $(".screen-container2").show();
    let date = new Date();
    let hours = date.getHours();
    let minutes = date.getMinutes();
    $("#time").text(`${hours}:${minutes}`);
    $("#calling-anim").text("Calling");
    var audio = new Audio("ringsound.mp3");
    audio.loop = true;
    audio.play();
    var dots = 0;
    const animateCalling = () => {
      if (dots < 3) {
        $("#calling-anim").append(".");
        dots++;
      } else {
        $("#calling-anim").html("Calling");
        dots = 0;
      }
    };

    const callingInterval = setInterval(animateCalling, 600);
    
    setTimeout(() => {
      clearInterval(callingInterval);
      
      $(".screen-container2").hide();
      $(".screen-container").hide();
      audio.pause();
      $(".screen-container3").show();
      setTimeout(() => {
        const voiceLinesArray = !waiting 
          ? Config.Supplies[State.numVal].voiceLines.requesting
          : [];
        
        const randomIndex = Math.floor(Math.random() * voiceLinesArray.length);
        const audioFile = !waiting
          ? 'voice_lines/' + State.numVal + '/' + voiceLinesArray[randomIndex]
          : 'voice_lines/not_available.mp3';

        var audio2 = new Audio(audioFile);
        var audio3 = new Audio("end_call.mp3");
        
        // Wait for audio metadata to load before playing
        audio2.addEventListener('loadedmetadata', function() {
          audio2.play();
          const audio2Duration = audio2.duration * 1000;
          
          setTimeout(() => {
            audio2.pause();
            audio3.play();
            
            setTimeout(() => {
              $(".screen-container3").hide();
              $(".screen-container").show();
              $(".screen-container2").hide();
              $.post("https://pd_labs/endCall", JSON.stringify({
                val: State.numVal
              }));
              State.busy = false;
            }, 2000);
          }, audio2Duration);
        });
      }, 800);
    }, 4000);
  };
  $(document).keydown(function(e) {
    if (e.keyCode === 40) {
      if (!State.open) return;
      var current = $(".active");
      var next = current.next();
      if (next.length) {
        current.removeClass("active");
        next.addClass("active");
      } else {
        current.removeClass("active");
        next = $(".screen-container div").first();
        next.addClass("active");
      }
      var container = $(".screen-container");
      var scrollTo = next.position().top + container.scrollTop();
      var containerHeight = container.height();
      if (scrollTo > containerHeight) {
        container.scrollTop(scrollTo - containerHeight);
      }
    }
  });

  $(document).keydown(function(e) {
    if (e.keyCode === 27) {
      if (!State.open) return;
      var current = $(".active");
      var prev = current.prev();
      if (prev.length) {
        current.removeClass("active");
        prev.addClass("active");
      } else {
        current.addClass("active");
      }
      var container = $(".screen-container");
      container.scrollTop(0);
    }
    
    // arrow top scroll
    if (e.keyCode === 38) { 
      var container = $(".screen-container");
      if (!State.open) return;
      var current = $(".active");
      var next = current.prev();
      if (next.length) {
        current.removeClass("active");
        next.addClass("active");
      }
      container.scrollTop(container.scrollTop() - 100);
    }
  });

  $(document).keydown(function(e) {
    if (e.keyCode === 13) {
      if (!State.open) return;
      State.numVal = $(".active").attr("value");
      $.post(
        "https://pd_labs/call",
        JSON.stringify({
          val: State.numVal,
        })
      );
      e.preventDefault();
    }
  });

  $(document).keydown(function(e) {
    if (e.keyCode === 27) { // esc key
      $.post("https://pd_labs/closePhone", JSON.stringify({}));
    }
  });

  window.addEventListener("message", (e) => {
    if (e.data.action === "init") {
      State.resourceName = e.data.resourceName;
      Config = e.data.config;
      console.log("INITIALIZED");
    } else if (e.data.action === "open_phone") {
      State.open = true;
      $(".screen-container").html(`
        <div value="coke" class="contact-col active">Simeon (Coke)</div>
        <div value="meth" class="contact-col">Nikola (Meth)</div>
        <div value="weed" class="contact-col">Mike (Weed)</div>  
        <div value="equipment" class="contact-col">(Equipment)</div>
      `);
      $(".screen-container").show();
      State.numVal = null;
      $(".phone-container").fadeIn(200);
    } else if (e.data.action === "close_phone") {
      State.open = false;
      $(".phone-container").fadeOut(200);
    } else if (e.data.action === "call") {
      if (State.busy) return;
      ShowCallScreen(e.data.number, e.data.waiting);
    }
  });
});
