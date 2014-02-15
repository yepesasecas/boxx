function addMasonryTo(collection){
	var $items = $(collection);
	$items.imagesLoaded(function(){
		$items.masonry({
 			 itemSelector: '.item'
		});
	});
}

function mostrar_new_box_panel(e){
	e.preventDefault();
	
	var new_box_link = $("#new_box_link");
	var new_box_panel = $("#new_box_panel");
	
	new_box_link.hide();
	new_box_panel.show();
	addMasonryTo('#boxes');
}

function cambiar_precios_new_box_panel(){
	var selector = $("select#plan_id");
	var selector_value= selector.val();
	var precio_div =  $("p#precio");
	if (selector_value==3){
		precio_div.text("$60,000 pesos");
	}
	else if ( selector_value==2){
		precio_div.text("$102,000 pesos");
	}
	else if(selector_value==1){
		precio_div.text("$150,000 pesos");
	}

}

$(document).ready(function(){
	addMasonryTo('#items');
	addMasonryTo('#boxes');

	//Mostrar el panel de New Box en Boxes index
	$("#new_box_link").on("click",mostrar_new_box_panel);

	//Cambiar el precio de los planes en el panel NEW BOX
	$("select#plan_id").on("change", cambiar_precios_new_box_panel );
});