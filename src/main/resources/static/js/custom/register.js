$(document).ready(function() {
    $('.registration-form').submit(function(event) {
        // Prevent default form submission
        event.preventDefault();

        // Collect form data
        var formData = {
            name: $('#inputName').val(),
            email: $('#inputEmail').val(),
            password: $('#inputPassword').val(),
            mobile: $('#inputMobile').val()
        };
        // Log the form data to the console
        //console.log(formData);
		console.log("SANJAY SINGH KATHETH");	
        // Here you can add further logic to handle the form data, like sending it to the server via AJAX
    });
});
