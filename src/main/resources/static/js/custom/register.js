$(document).ready(function() {
    var regexPatterns = {
        name: /^[A-Za-z]{5,}$/, // At least 5 characters, only alphabets
        email: /^[^\s@]+@[^\s@]+\.[^\s@]+$/, // Valid email format
        password: /^(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{6,}$/, // At least one uppercase, one number, one special character, and minimum 6 characters
        mobile: /^\d{10}$/ // Exactly 10 digits
    };

    function validateField(value, field) {
        return regexPatterns[field].test(value);
    }

    // Function to check if all fields are filled and valid
    function checkAllFieldsValid() {
        var allFieldsValid = true;
        $('#name, #email, #password, #mobile').each(function() {
            var fieldId = $(this).attr('id');
            if (!validateField($(this).val(), fieldId) || $(this).val() === '') {
                allFieldsValid = false;
                return false; // Break out of the loop early if any field is invalid
            }
        });
        return allFieldsValid;
    }

    // Enable/disable submit button based on form completion and validity
    $('.registration-form input').on('keyup change', function() {
        if (checkAllFieldsValid()) {
            $('.registration-form button[type="submit"]').prop('disabled', false);
        } else {
            $('.registration-form button[type="submit"]').prop('disabled', true);
        }
    });

    // Initially hide the success message
    $('#successMessage').hide();
});
