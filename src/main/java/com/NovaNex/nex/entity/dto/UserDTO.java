package com.NovaNex.nex.entity.dto;


import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Pattern;
import lombok.Data;

@Data
public class UserDTO {
	
	@NotBlank(message = "First name is required")
	private String firstName;

	@NotBlank(message = "Last name is required")
	private String lastName;

	@Pattern(regexp = "[0-9]+", message = "Contact number should contain only digits")
	private String contactNumber;

	@Email(message = "Invalid email address")
	private String emailAddress;
}
