function valor_mensual(valor){
	var monto = "$"+valor*20000+ " pesos";
	$(".valor_solicitud").text(monto);
}
function sumar_caja(){
	var input_cajas = $("#input_numero_cajas");
	valor = input_cajas.val();
	valor++;
	input_cajas.val(valor);
	valor_mensual(valor);
}
function restar_caja(){
	var input_cajas = $("#input_numero_cajas");
	valor = input_cajas.val();
	valor--;
	input_cajas.val(valor);
	valor_mensual(valor);
}

$(document).ready(function(){
	$("#sumar_caja").on("click", sumar_caja);
	$("#restar_caja").on("click", restar_caja);
});	
	