let Form = {};
let currentLabId = null;
let Cart = [];
$(() => {
  const classOnValue = (value) => {
    if (value < 35) {
      return "glow-red";
    } else if (value < 65) {
      return "glow-orange";
    } else {
      return "glow-green";
    }
  };

  window.addEventListener("message", (e) => {
    if (e.data.action === "openCreator") {
      $(".seller-container").hide();
      $(".creator-container").fadeIn(200);
    } else if (e.data.action === "openBuyer") {
      currentLabId = e.data.lab.id;
      $(".creator-container").hide();
      $(".seller-container").fadeIn(200);

      $("#lab-name2").val(e.data.lab.name);
      $("#lab-price2").val(e.data.lab.price + "$");
      $("#lab-type3").val(e.data.lab.labType.toUpperCase() + " LABORATORY");
      $("#preview-img2").attr(
        "src",
        "assets/previews/" + e.data.lab.labType + "-lab.jpeg"
      );
    } else if (e.data.action === "checkStatus") {
      $("#seed-type").val(e.data.data.seedLabel);
      if (e.data.data.growthStatus !== undefined) {
        $("#growth-bar").css("width", (e.data.data.growthStatus * 20) + "%");
        $(".growth-bar-parent").show();
      } else {
        $(".growth-bar-parent").hide();
      }

      if (e.data.data.drying !== undefined) {
        $("#drying-bar").css("width", e.data.data.drying + "%");
        $("#drying-bar").removeClass("glow-red glow-orange glow-green");
        $("#drying-bar").addClass(classOnValue(e.data.data.drying));
        $(".drying-bar-parent").show();
      } else {
        $(".drying-bar-parent").hide();
      }

      if (e.data.data.health !== undefined) {
        $("#plant-health").css("width", e.data.data.health + "%");
        $("#plant-health").removeClass("glow-red glow-orange glow-green");
        $("#plant-health").addClass(classOnValue(e.data.data.health));
        $(".plant-health-parent").show();
      } else {
        $(".plant-health-parent").hide();
      }

      if (e.data.data.fert !== undefined) {
        $("#plant-fertilizer").css("width", e.data.data.fert + "%");
        $("#plant-fertilizer").removeClass("glow-red glow-orange glow-green");
        $("#plant-fertilizer").addClass(classOnValue(e.data.data.fert));
        $(".plant-fertilizer-parent").show();
      } else {
        $(".plant-fertilizer-parent").hide();
      }

      if (e.data.data.water !== undefined) {
        $("#plant-water").css("width", e.data.data.water + "%");
        $("#plant-water").removeClass("glow-red glow-orange glow-green");
        $("#plant-water").addClass(classOnValue(e.data.data.water));
        $(".plant-water-parent").show();
      } else {
        $(".plant-water-parent").hide();
      }

      if (e.data.data.fan !== undefined) {
        $("#plant-fan").css("width", e.data.data.fan + "%");
        $("#plant-fan").removeClass("glow-red glow-orange glow-green");
        $("#plant-fan").addClass(classOnValue(e.data.data.fan));
        $(".plant-fan-parent").show();
      } else {
        $(".plant-fan-parent").hide();
      }

      if (e.data.data.light !== undefined) {
        $("#plant-light").css("width", e.data.data.light + "%");
        $("#plant-light").removeClass("glow-red glow-orange glow-green");
        $("#plant-light").addClass(classOnValue(e.data.data.light));
        $(".plant-light-parent").show();
      } else {
        $(".plant-light-parent").hide();
      }

      $(".status-container").fadeIn(200);
    } else if (e.data.action === "openComputer") {
      Cart = [];
      $(".seller-container").hide();
      $(".creator-container").hide();
      let lab = e.data.lab;
      $("#lab-name3").val(lab.name);
      $(".c-blip-color").empty();
      $(".c-blip-color[value=" + lab.blipColor + "]").html(`
        <div class="w-full h-full bg-black rounded-md flex justify-center items-center" style="opacity: .7;">
          <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" enable-background="new 0 0 24 24" style="fill: white; height: 1.6rem; width: 1.6rem;">
            <path style="text-indent:0;text-align:start;line-height:normal;text-transform:none;block-progression:tb;-inkscape-font-specification:Bitstream Vera Sans" d="M 12 1 C 5.9367124 1 1 5.9367124 1 12 C 1 18.063287 5.9367123 23 12 23 C 18.063287 23 23 18.063287 23 12 C 23 5.9367123 18.063287 1 12 1 z M 12 3 C 16.982407 3 21 7.0175927 21 12 C 21 16.982407 16.982407 21 12 21 C 7.0175927 21 3 16.982407 3 12 C 3 7.0175926 7.0175926 3 12 3 z M 17.40625 8.1875 L 11 14.5625 L 7.71875 11.28125 L 6.28125 12.71875 L 10.28125 16.71875 L 11 17.40625 L 11.71875 16.71875 L 18.8125 9.59375 L 17.40625 8.1875 z" overflow="visible" enable-background="accumulate" font-family="Bitstream Vera Sans"/>
          </svg>       
        </div>
      `);
      $("#owner-name").val(lab.ownerName.toUpperCase());
      $("#ownership-type2").val(lab.ownership.toUpperCase());
      $("#lab-type2").val(lab.labType.toUpperCase() + " LABORATORY");
      $("#lab-equipped").val(lab.upgrades.equipped ? "INSTALLED" : "NOT INSTALLED");
      $("#lab-n-keyholders").val(lab.keyHolders.length);
      $("#lab-image").attr("src", "assets/previews/" + lab.labType + "-lab.jpeg");

      if (lab.upgrades.cctv) {
        $("#cctv-status").html("INSTALLED");
        $("#cctv-status").removeClass("disabled");
        $("#open-cctv").removeClass("disabled");
        $("#open-cctv").removeClass("btn-red");
        $("#open-cctv").addClass("btn");
      } else {
        $("#cctv-status").html("NOT INSTALLED");
        $("#cctv-status").addClass("disabled");
        $("#open-cctv").addClass("disabled");
        $("#open-cctv").removeClass("btn");
        $("#open-cctv").addClass("btn-red");
      }
      if (lab.keyholdersData.length > 0) {
        $("#keyholders-list").empty();
        lab.keyholdersData.forEach((keyholder) => {
          $("#keyholders-list").append(`
            <div class="flex keyholder justify-center items-center w-[100%] p-2 relative">
                ${keyholder.name.toUpperCase()}
                <div id="keyholder-${keyholder.identifier}" value="${keyholder.identifier}" class="hover keyholder absolute h-full w-full flex justify-center items-center">
                  <svg fill="#000000" version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" 
                        width="600px" height="600px" viewBox="0 0 408.483 408.483"
                        xml:space="preserve">
                    <g>
                        <g>
                            <path d="M87.748,388.784c0.461,11.01,9.521,19.699,20.539,19.699h191.911c11.018,0,20.078-8.689,20.539-19.699l13.705-289.316
                                H74.043L87.748,388.784z M247.655,171.329c0-4.61,3.738-8.349,8.35-8.349h13.355c4.609,0,8.35,3.738,8.35,8.349v165.293
                                c0,4.611-3.738,8.349-8.35,8.349h-13.355c-4.61,0-8.35-3.736-8.35-8.349V171.329z M189.216,171.329
                                c0-4.61,3.738-8.349,8.349-8.349h13.355c4.609,0,8.349,3.738,8.349,8.349v165.293c0,4.611-3.737,8.349-8.349,8.349h-13.355
                                c-4.61,0-8.349-3.736-8.349-8.349V171.329L189.216,171.329z M130.775,171.329c0-4.61,3.738-8.349,8.349-8.349h13.356
                                c4.61,0,8.349,3.738,8.349,8.349v165.293c0,4.611-3.738,8.349-8.349,8.349h-13.356c-4.61,0-8.349-3.736-8.349-8.349V171.329z"/>
                            <path d="M343.567,21.043h-88.535V4.305c0-2.377-1.927-4.305-4.305-4.305h-92.971c-2.377,0-4.304,1.928-4.304,4.305v16.737H64.916
                                c-7.125,0-12.9,5.776-12.9,12.901V74.47h304.451V33.944C356.467,26.819,350.692,21.043,343.567,21.043z"/>
                        </g>
                    </g>
                    </svg>
                </div>
              </div>
          `);
          $(`#keyholder-${keyholder.identifier}`).click((e) => {
            $.post("https://pd_labs/removeKeyholder", JSON.stringify({
              playerId: keyholder.identifier
            }));
          });
        });
        $("#keyholders-list").removeClass("justify-center");
      } else {
        $("#keyholders-list").addClass("justify-center");
        $("#keyholders-list").html("YOU ARE THE ONLY PERSON/GANG WITH KEY ACCESS");
      }

      if (e.data.store !== undefined) {
        $("#store-items").empty();
        e.data.store.forEach((item, key) => {
          $("#store-items").append(`
            <div id=store-item-${key} class="store-item-cls item flex flex-row p-2 justify-between card cursor-pointer" style="padding: 0.5rem;">
                <div class="text-white" style="pointer-events: none;">${item.label}</div>
                <div class="text-[#54FEA9]" style="pointer-events: none;">${item.price}$</div>
            </div>
          `);
  
          $(`#store-item-${key}`).click((e) => {
            if ($(e.target).hasClass("active")) {
              $(e.target).removeClass("active");
              Cart = Cart.filter((i) => i !== item);
              if (Cart.length === 0) {
                $("#buy-items").addClass("disabled");
              }
              return;
            }
            $(e.target).addClass("active");
            $("#buy-items").removeClass("disabled");
            Cart.push(item);
          });
        });

        $("#buy-items").click((e) => {
          if (!$(e.target).hasClass("disabled")) {
            $.post("https://pd_labs/buyItems", JSON.stringify({
              items: Cart
            }));
            // remove active class from all items with cart
            $(".store-item-cls").removeClass("active");
            $("#buy-items").addClass("disabled");
            Cart = [];
          }
        });
      }
      
      $("#keyholder-id").on("input", () => {
        let val = $("#keyholder-id").val();
        if (!isNaN(val)) {
          $("#share-key-btn").removeClass("disabled");
        } else {
          $("#share-key-btn").addClass("disabled");
        }
      });

      $("#buyer-id").on("input", () => {
        let val = $("#buyer-id").val();
        if (!isNaN(val)) {
          $("#transfer-btn").removeClass("disabled");
        } else {
          $("#transfer-btn").addClass("disabled");
        }
      });
      
      if (e.data.owner) {
        $("#transfer-btn").removeClass("disabled");
        $("#share-key-btn").removeClass("disabled");
      } else {
        $("#share-key-btn").addClass("disabled");
        $("#transfer-btn").addClass("disabled");
      }

      let upgrades = e.data.upgrades;
      if (upgrades) {
        $("#lab-upgrades").empty();
        Object.keys(upgrades).forEach((key) => {
          let upgrade = upgrades[key];
          if (!e.data.lab.upgrades[upgrade.upgradeId]) {
            $("#lab-upgrades").append(`
              <div id="upgrade-${upgrade.upgradeId}" class="item relative item-upgrade card flex flex-col">
                <div class="opacity-0 absolute mt-[-.5rem] ml-[-.5rem] w-full h-full upgrade-hover flex justify-center items-center bg-[#103422] text-white" style="font-family: 'Joyride STD';">UPGRADE FOR ${upgrade.price}$</div>
                <div class="upgrade-content flex flex-col">
                  <div class="flex flex-row justify-between">
                    <div class="text-white">${upgrade.label.toUpperCase()}</div>
                    <div class="text-[#54FEA9]">${upgrade.price}$</div>
                  </div>
                  <div class="text-[.7rem] w-3/4 h-full text-[#BCBCBC]">${upgrade.description.toUpperCase()}</div>
                </div>
              </div>  
            `);
          } else {
            $("#lab-upgrades").append(`
              <div id="upgrade-${upgrade.upgradeId}" class="item relative item-upgrade card flex flex-col">
                <div class="upgrade-content flex flex-col">
                  <div class="flex flex-row justify-between">
                    <div class="text-white">${upgrade.label.toUpperCase()}</div>
                    <div class="text-[#54FEA9]">INSTALLED</div>
                  </div>
                  <div class="text-[.7rem] w-3/4 h-full text-[#BCBCBC]">${upgrade.description.toUpperCase()}</div>
                </div>
              </div>  
            `);
          }
          $(`#upgrade-${upgrade.upgradeId}`).click((e) => {
            if (!(lab.upgrades[upgrade.upgradeId])) {
              $.post("https://pd_labs/purchaseUpgrade", JSON.stringify({
                upgradeId: upgrade.upgradeId
              }));
            }
          });
        });
      }

      if (lab.labType === "weed") {
        $("#lab-stats").empty();
        $("#lab-stats").append(`
          <div class="card">
            <div class="text-white">AVERAGE PLANT HEALTH</div>
            <div class="w-full bg-[#454545] h-2 rounded mt-1">
              <div class="${classOnValue(lab.stats.health)} w-[${lab.stats.health}%] h-2 rounded mt-1"></div>
            </div>
          </div>  
          <div class="card">
            <div class="text-white">AVERAGE LEAF DRYING</div>
            <div class="w-full bg-[#454545] h-2 rounded mt-1">
              <div class="${classOnValue(lab.stats.drying)} w-[${lab.stats.drying}%] h-2 rounded mt-1"></div>
            </div>
          </div>  
          <div class="card">
            <div class="text-white">AVERAGE LAB VENTILLATION</div>
            <div class="w-full bg-[#454545] h-2 rounded mt-1">
              <div class="${classOnValue(lab.stats.vent)} w-[${lab.stats.vent}%] h-2 rounded mt-1"></div>
            </div>
          </div>
        `);
      } else if (lab.labType === "meth" || lab.labType === "coke") {
        $("#lab-stats").empty();
        $("#lab-stats").append(`
          <div class="card">
            <div class="text-white">EQUIPEMENT HEALTH</div>
            <div class="w-full bg-[#454545] h-2 rounded mt-1">
              <div class="${classOnValue(lab.stats.health)} w-[${lab.stats.health}%] h-2 rounded mt-1"></div>
            </div>
          </div>  
          <div class="card">
            <div class="text-white">TOXIC FUME LEVEL</div>
            <div class="w-full bg-[#454545] h-2 rounded mt-1">
              <div class="${classOnValue(100 - lab.stats.fume)} w-[${lab.stats.fume}%] h-2 rounded mt-1"></div>
            </div>
          </div>  
          <div class="card">
            <div class="text-white">WATER PUMP LEVEL</div>
            <div class="w-full bg-[#454545] h-2 rounded mt-1">
              <div class="${classOnValue(lab.stats.waterPump)} w-[${lab.stats.waterPump}%] h-2 rounded mt-1"></div>
            </div>
          </div>
        `);
      }

      $(".management-container").fadeIn(200);
    } else if (e.data.action === "upgrade_lab") {
      let upgradeId = e.data.upgradeId;
      if (upgradeId !== "repair_machines" && upgradeId !== "water_pump") {
        $("#upgrade-" + upgradeId).html(`
          <div class="upgrade-content flex flex-col">
            <div class="flex flex-row justify-between">
              <div class="text-white">${e.data.upgrades[upgradeId].label}</div>
              <div class="text-[#54FEA9]">INSTALLED</div>
            </div>
            <div class="text-[.7rem] w-3/4 h-full text-[#BCBCBC]">${e.data.upgrades[upgradeId].description}</div>
          </div>  
        `);
      }

      if (upgradeId === "cctv") {
        $("#cctv-status").html("INSTALLED");
        $("#cctv-status").removeClass("disabled");
        $("#open-cctv").removeClass("disabled");
        $("#open-cctv").removeClass("btn-red");
        $("#open-cctv").addClass("btn");
      }
    } else if (e.data.action === "close") {
      $(".creator-container").fadeOut(200);
      $(".seller-container").fadeOut(200);
      $(".darkweb-container").fadeOut(200);
      $(".status-container").fadeOut(200);
      $(".management-container").fadeOut(200);
      $.post("https://pd_labs/exit", JSON.stringify({}));
    }
  });

  $("#open-cctv").click((e) => {
    if (!$(e.target).hasClass("disabled")) {
      $.post("https://pd_labs/openCCTV", JSON.stringify({}));
      $(".management-container").fadeOut(200);
      $.post("https://pd_labs/exit", JSON.stringify({}));
    }
  });

  $("#share-key-btn").click((e) => {
    let val = $("#keyholder-id").val();
    if (!isNaN(val)) {
      $.post("https://pd_labs/shareKey", JSON.stringify({
        playerId: val
      }));
      e.preventDefault();
    }
  });
  
  $("#transfer-btn").click((e) => {
    if (!isNaN($("#buyer-id").val())) {
      $.post("https://pd_labs/transferLab", JSON.stringify({
        playerId: $("#buyer-id").val()
      }));
      e.preventDefault();
    }
  });

  const checkForBtn = () => {
    if (Form.labName && Form.labPrice && Form.labPrice > 0 && Form.labType && Form.blipColor) {
      $("#create-lab").removeClass("disabled");
    } else {
      $("#create-lab").addClass("disabled");
    }

    if (Form.ownershipType) {
      $("#buy-lab").removeClass("disabled");
    } else {
      $("#buy-lab").addClass("disabled");
    }
  };

  $(document).keydown((e) => {
    if (e.keyCode === 27) {
      $(".creator-container").fadeOut(200);
      $(".seller-container").fadeOut(200);
      $(".darkweb-container").fadeOut(200);
      $(".status-container").fadeOut(200);
      $(".management-container").fadeOut(200);
      $.post("https://pd_labs/exit", JSON.stringify({}));
    }
  });

  $("#lab-name").on("input", () => {
    let val = $("#lab-name").val();
    if (val.length > 0) {
      Form.labName = val;
    } else {
      Form.labName = null;
    }
    checkForBtn();
  });

  $("#buy-lab").on("click", (e) => {
    if (!$(e.target).hasClass("disabled")) {
      $.post("https://pd_labs/buyLab", JSON.stringify({
        id: currentLabId,
        ownership: Form.ownershipType
      }));
      Form = {};
      currentLabId = null;
      $(".seller-container").fadeOut(200);
      $.post("https://pd_labs/exit", JSON.stringify({}));
    }
  });

  $("#lab-price").on("input", () => {
    let val = $("#lab-price").val();
    if (!isNaN(val)) {
      Form.labPrice = val;
    } else {
      Form.labPrice = null;
      $("#lab-price").val("");
    }
    checkForBtn();
  });

  $(".c-blip-color").on("click", (e) => {
    $(".c-blip-color").empty();
    Form.blipColor = $(e.target).attr("value");
    $(e.target).html(`
      <div class="w-full h-full bg-black rounded-md flex justify-center items-center" style="opacity: .7;">
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" enable-background="new 0 0 24 24" style="fill: white; height: 1.6rem; width: 1.6rem;">
                  <path style="text-indent:0;text-align:start;line-height:normal;text-transform:none;block-progression:tb;-inkscape-font-specification:Bitstream Vera Sans" d="M 12 1 C 5.9367124 1 1 5.9367124 1 12 C 1 18.063287 5.9367123 23 12 23 C 18.063287 23 23 18.063287 23 12 C 23 5.9367123 18.063287 1 12 1 z M 12 3 C 16.982407 3 21 7.0175927 21 12 C 21 16.982407 16.982407 21 12 21 C 7.0175927 21 3 16.982407 3 12 C 3 7.0175926 7.0175926 3 12 3 z M 17.40625 8.1875 L 11 14.5625 L 7.71875 11.28125 L 6.28125 12.71875 L 10.28125 16.71875 L 11 17.40625 L 11.71875 16.71875 L 18.8125 9.59375 L 17.40625 8.1875 z" overflow="visible" enable-background="accumulate" font-family="Bitstream Vera Sans"/>
                </svg>       
      </div>`);
    $.post("https://pd_labs/changeBlipColor", JSON.stringify({
      blip: Form.blipColor
    }));
    e.preventDefault();
  });
  $(".lab-type").on("click", (e) => {
    $(".lab-type").removeClass("active");
    $(e.target).addClass("active");
    $("#preview-img").attr(
      "src",
      "assets/previews/" + $(e.target).attr("value") + "-lab.jpeg"
    );
    Form.labType = $(e.target).attr("value");
    checkForBtn();
  });

  $(".ownership-type").on("click", (e) => {
    $(".ownership-type").removeClass("active");
    $(e.target).addClass("active");
    $("#preview-img").attr(
      "src",
      "assets/previews/" + $(e.target).attr("value") + "-lab.jpeg"
    );
    Form.ownershipType = $(e.target).attr("value");
    checkForBtn();
  });

  $("#create-lab").on("click", (e) => {
    if (!$(e.target).hasClass("disabled")) {
      $.post(
        "https://pd_labs/createLab",
        JSON.stringify({
          labName: Form.labName,
          labPrice: Form.labPrice,
          labType: Form.labType,
          blipColor: Form.blipColor,
        })
      );
      Form = {};
      $("#lab-name").val("");
      $("#lab-price").val("");
      $(".lab-type").removeClass("active");
      $(".ownership-type").removeClass("active");
      $(".c-blip-color").empty();
      $(".creator-container").fadeOut(200);
      $("#create-lab").addClass("disabled");
      $.post("https://pd_labs/exit", JSON.stringify({}));
    }
  });
});
