package com.NovaNex.nex.repoimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Service;

import com.NovaNex.nex.entity.User;
import com.NovaNex.nex.repo.UserRepository;

@Service
public class UserRepositoryImpl implements UserRepository {

	@Autowired
	private MongoTemplate mongoTemplate;

	@Override
	public void save(User user) {
		mongoTemplate.save(user, "users");
	}

}
