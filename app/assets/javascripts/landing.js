function sumar_caja(){
	var input_cajas = $("#input_numero_cajas");
	valor = input_cajas.val()+;
	input_cajas.val(valor);
}
function restar_caja(){
	var input_cajas = $("#input_numero_cajas");
	input_cajas.val(input_cajas.val() -1);
}

$(document).ready(function(){
	$("#sumar_caja").on("click", sumar_caja);
	$("#restar_caja").on("click", restar_caja);
});	
	