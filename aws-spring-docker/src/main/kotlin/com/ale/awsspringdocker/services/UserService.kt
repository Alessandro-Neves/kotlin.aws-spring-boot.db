package com.ale.awsspringdocker.services

import com.ale.awsspringdocker.repositories.UserRepository
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.security.core.userdetails.UserDetails
import org.springframework.security.core.userdetails.UserDetailsService
import org.springframework.security.core.userdetails.UsernameNotFoundException
import org.springframework.stereotype.Service
import java.util.logging.Logger

@Service
class UserService(@field:Autowired var repository: UserRepository) : UserDetailsService {

    private val logger = Logger.getLogger(UserService::class.java.name)

    override fun loadUserByUsername(username: String?): UserDetails {
        logger.info("Findind one User by username $username !")

        val user = repository.findByUsername(username)
        return user ?: throw UsernameNotFoundException("Username $username not found !")
        // ?: Operador elvis
    }

}