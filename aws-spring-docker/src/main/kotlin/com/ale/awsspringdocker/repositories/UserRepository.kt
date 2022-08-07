package com.ale.awsspringdocker.repositories

import com.ale.awsspringdocker.models.v1.User
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.data.jpa.repository.Query
import org.springframework.data.repository.query.Param
import org.springframework.stereotype.Repository

@Repository
interface UserRepository : JpaRepository<User?, Long> {
    @Query("SELECT u FROM User u WHERE u.userName = :userName")
    fun findByUsername(@Param("userName") userName: String?): User?
}

//    @Query("SELECT * FROM users WHERE users.user_name = :userName", nativeQuery = true)