$(document).ready(function() {
    // Hide the success message initially
    $('#successMessage').hide();

    $('.registration-form').submit(function(event) {
        // Prevent default form submission
        event.preventDefault();

        // Collect form data
        var formData = {
            name: $('#inputName'),
            email: $('#inputEmail'),
            password: $('#inputPassword'),
            mobile: $('#inputMobile')
        };

        // Check if all fields are filled
        var allFieldsFilled = true;
        for (var key in formData) {
            if (formData[key].val() === '') {
                allFieldsFilled = false;
                formData[key].attr('placeholder', key + ' field is empty'); // Set placeholder as error message
            }
        }

        if (!allFieldsFilled) {
            return; // Stop the function if any field is empty
        }

        var jsonData = JSON.stringify({
            name: formData.name.val(),
            email: formData.email.val(),
            password: formData.password.val(),
            mobile: formData.mobile.val()
        });
        // Make an AJAX request
        $.ajax({
            url: 'http://localhost:8080/api/user/signup',
            type: 'POST',
            contentType: 'application/json',
            data: jsonData,
            success: function(response, status, xhr) {
                console.log('Request successful:', xhr.status);
                if (xhr.status === 200) {
                    console.log("oh this is success")
                    $('#successMessage').show(); // Show success message
                }
            },
            error: function(xhr, status, error) {
                console.error('Request error:', status, error);
            }
        });
    });
});