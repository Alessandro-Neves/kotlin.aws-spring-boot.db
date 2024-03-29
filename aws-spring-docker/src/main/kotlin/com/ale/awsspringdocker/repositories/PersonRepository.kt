package com.ale.awsspringdocker.repositories

import com.ale.awsspringdocker.models.v1.Person
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.stereotype.Repository

@Repository
interface PersonRepository: JpaRepository<Person, Long?>