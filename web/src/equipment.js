$(() => {
  window.addEventListener("message", (e) => {
    if (e.data.action === "openEquipment") {
      $(".darkweb-container").fadeIn(200);
      let catalogue = e.data.catalogue;
      // loop into the catalogue
      $("#catalogue-items").empty();
      Object.values(catalogue).forEach((item) => {
        $("#catalogue-items").append(`
          <div class="card flex flex-col gap-2 h-full w-[30%] p-2">
              <h1 class="text-zinc-50 w-full text-center text-[1.8rem]" style="font-family: 'HACKED';">${item.title}</h1>
              <img src="assets/previews/${item.drug}-lab.jpeg" alt="">
              <h1 class="w-full text-center text-bold text-zinc-100 text-[1.3rem]" style="font-family: 'PSemiBold';">Details:</h1>
              <p class="w-full text-zinc-200 h-[27%]" style="font-family: 'PMedium';">${item.description}</p>
              <h1 class="w-full text-center text-bold text-zinc-100 text-[1.3rem]" style="font-family: 'PSemiBold';">Price:</h1>
              <p class="text-green-400 w-full text-center text-[1.4rem] mt-[-12px]" style="font-family: 'PMedium';">${item.price}$</p>              
              <div id="buy-equipments-${item.drug}" value="${item.drug}" class="text-center bg-green-400 mt-4 rounded-sm text-[1.7rem] hover:bg-green-500" style="font-family: 'HACKED'; cursor: pointer;">BUY EQUIPEMENTS</div>
          </div>  
        `);
        $("#buy-equipments-" + item.drug).click(() => {
          $.post("https://pd_labs/buyEquipments", JSON.stringify({ drug: item.drug }));
          $(".darkweb-container").fadeOut(200);
          $.post("https://pd_labs/exit");
        });
      });
    }
  });
});
