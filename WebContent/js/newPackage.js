function req_description() {
	
	
	var description = document.getElementById("description").value;
	
	if (description.length <=15) {

        document.getElementById("res_description").innerText = "Enter more details....!";
        document.getElementById("submit").disabled = true;
       
    } 

    else {
        document.getElementById("res_description").innerText = "";
        document.getElementById("submit").disabled = false;
    }
}

function req_phone() {
	var phone = document.getElementById("phone").value;
	   

    if ((phone.length < 10) || (phone.length > 10)) {

        document.getElementById("res_phone").innerText = "Invalid phone number...!!";
        document.getElementById("submit").disabled = true;
       
    } 

    else {
        document.getElementById("res_phone").innerText = "";
        document.getElementById("submit").disabled = false;
    }
}

function req_price() {
	var price = document.getElementById("price").value;
	   

    if (price < 1000) {

        document.getElementById("res_price").innerText = "Invalid package price...!!";
        document.getElementById("submit").disabled = true;
       
    } 

    else {
        document.getElementById("res_price").innerText = "";
        document.getElementById("submit").disabled = false;
    }
}