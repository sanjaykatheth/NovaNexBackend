package com.NovaNex.nex.userserviceimpl;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.NovaNex.nex.entity.User;
import com.NovaNex.nex.entity.dto.UserDTO;
import com.NovaNex.nex.repo.UserRepository;
import com.NovaNex.nex.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private ModelMapper modelMapper;

	@Autowired
	private UserRepository userRepository;

	@Override
	public void signUp(UserDTO userDto) {

		User userEntity = modelMapper.map(userDto, User.class);
		userRepository.save(userEntity);
	}

}
