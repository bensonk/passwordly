jQuery.ajaxSetup({ 
	'beforeSend': function(xhr){ xhr.setRequestHeader("Accept", "text/javascript")}
});

$(document).ready( function(){ 
	$("#generate").submit( function(){
		$.post($(this).attr("action"), $(this).serialize(), null, "script");
		
		return false;
	});
	
	$("#generate label").click( function(){
		$(this).addClass("selected");
		$(this).siblings().removeClass("selected");
	});
	
	$("#generate label input[checked=checked]").parent().addClass("selected");
});