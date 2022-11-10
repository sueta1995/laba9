function show_result(data){
	var result = document.getElementById("result");
    
	result.innerHTML = "<hr/>Result is: " + data.value + "<hr/><p>"+Date()+"</p>";
}

$(document).ready(function(){
	$("#calc_form").bind("ajax:success", function(xhr, data, status) {
	    show_result(data)
	})
}) 
