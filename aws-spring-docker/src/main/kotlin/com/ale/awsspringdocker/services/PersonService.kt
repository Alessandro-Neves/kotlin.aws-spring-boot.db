package com.ale.awsspringdocker.services

import com.ale.awsspringdocker.dtos.v1.PersonDTO
import com.ale.awsspringdocker.exceptions.ResourceNotFoundException
import com.ale.awsspringdocker.mapper.DozerMapper
import com.ale.awsspringdocker.models.Person
import com.ale.awsspringdocker.repositories.PersonRepository
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Service
import java.util.logging.Logger

@Service
class PersonService {
    @Autowired
    private lateinit var repository: PersonRepository

    private val logger = Logger.getLogger(PersonService::class.java.name)

    fun findById(id: Long): PersonDTO {
        logger.info("Finding one person!")
        val person = repository.findById(id)
            .orElseThrow { ResourceNotFoundException("No records found for this id!") }

        return DozerMapper.parseObject(person, PersonDTO::class.java)
    }

    fun findAll(): List<PersonDTO> {
        logger.info("Finding all people!")
        val persons = repository.findAll()
        return DozerMapper.parseListObjects(persons, PersonDTO::class.java)
    }

    fun create(dto: PersonDTO): PersonDTO {
        logger.info("Creating one person with name ${dto.firstName}!")
        val person = DozerMapper.parseObject(dto, Person::class.java)
        val entity = repository.save(person)

        return DozerMapper.parseObject(entity, PersonDTO::class.java)
    }
    fun update(dto: PersonDTO): PersonDTO {
        logger.info("Updating one person with name ${dto.firstName}!")
        val person = DozerMapper.parseObject(dto, Person::class.java)
        val entity = repository.findById(person.id)
            .orElseThrow { ResourceNotFoundException("No records found for this id!") }

        entity.firstName = dto.firstName
        entity.lastName = dto.lastName
        entity.address = dto.address
        entity.gender = dto.gender

        val entityResponse = repository.save(entity)

        return DozerMapper.parseObject(entityResponse, PersonDTO::class.java)
    }
    fun delete(id: Long){
        logger.info("Deleting one person with id ${id}!")
        val entity = repository.findById(id)
            .orElseThrow { ResourceNotFoundException("No records found for this id!") }

        repository.delete(entity)
    }
}