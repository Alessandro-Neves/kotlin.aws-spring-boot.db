package com.ale.awsspringdocker.services

import com.ale.awsspringdocker.controllers.PersonController
import com.ale.awsspringdocker.dtos.v1.PersonDTO
import com.ale.awsspringdocker.dtos.v2.PersonDTO as PersonDTOv2
import com.ale.awsspringdocker.exceptions.ResourceNotFoundException
import com.ale.awsspringdocker.mapper.DozerMapper
import com.ale.awsspringdocker.mapper.custom.PersonMapper
import com.ale.awsspringdocker.models.v1.Person
import com.ale.awsspringdocker.repositories.PersonRepository
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.linkTo
import org.springframework.stereotype.Service
import java.util.logging.Logger

@Service
class PersonService {
    @Autowired
    private lateinit var repository: PersonRepository

    @Autowired
    private lateinit var mapper: PersonMapper

    private val logger = Logger.getLogger(PersonService::class.java.name)

    fun findById(id: Long): PersonDTO {
        logger.info("Finding one person!")
        val person = repository.findById(id)
            .orElseThrow { ResourceNotFoundException("No records found for this id!") }

        val personDTO = DozerMapper.parseObject(person, PersonDTO::class.java)

        // Adding HATEOAS link at dto
        val withSelfRel = linkTo(PersonController::class.java).slash(personDTO.key).withSelfRel()
        personDTO.add(withSelfRel)

        return personDTO
    }

    fun findAll(): List<PersonDTO> {
        logger.info("Finding all people!")
        val persons = repository.findAll()
        val personDTOs = DozerMapper.parseListObjects(persons, PersonDTO::class.java)

        // Adding HATEHOAS at personDTOs
        for(personDTO in personDTOs){
            val withSelfRel = linkTo(PersonController::class.java).slash(personDTO.key).withSelfRel()
            personDTO.add(withSelfRel)
        }

        return personDTOs
    }

    fun create(dto: PersonDTO): PersonDTO {
        logger.info("Creating one person with name ${dto.firstName}!")
        val person = DozerMapper.parseObject(dto, Person::class.java)
        val entity = repository.save(person)

        val personDTO = DozerMapper.parseObject(entity, PersonDTO::class.java)

        // Adding HATEOAS link at dto
        val withSelfRel = linkTo(PersonController::class.java).slash(personDTO.key).withSelfRel()
        personDTO.add(withSelfRel)

        return personDTO
    }

    fun createV2(dto: PersonDTOv2): PersonDTOv2 {
        logger.info("Creating one person with name ${dto.firstName}!")
        // val person = DozerMapper.parseObject(dto, Person::class.java)
        val person = mapper.mapDTOtoEntity(dto)
        val entity = repository.save(person)

        //return DozerMapper.parseObject(entity, PersonDTOv2::class.java)
        return mapper.mapEntityToDTO(entity)
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

        val personDTO = DozerMapper.parseObject(entityResponse, PersonDTO::class.java)

        // Adding HATEOAS link at dto
        val withSelfRel = linkTo(PersonController::class.java).slash(personDTO.key).withSelfRel()
        personDTO.add(withSelfRel)

        return personDTO

    }
    fun delete(id: Long){
        logger.info("Deleting one person with id ${id}!")
        val entity = repository.findById(id)
            .orElseThrow { ResourceNotFoundException("No records found for this id!") }

        repository.delete(entity)
    }
}