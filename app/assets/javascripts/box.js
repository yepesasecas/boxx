function mostrar_new_item_panel(e){
	e.preventDefault();
	
	var new_item_link = $("#new-item-link");
	var new_item_panel = $("#new-item-panel");
	
	new_item_link.hide();
	new_item_panel.show();
	addMasonryTo('#items');
}

$(document).ready(function(){
	$("#new-item-link").on("click", mostrar_new_item_panel);
});