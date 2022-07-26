package com.ale.awsspringdocker.mapper.custom

import com.ale.awsspringdocker.dtos.v2.PersonDTO as PersonDTOv2
import com.ale.awsspringdocker.models.v1.Person
import com.ale.awsspringdocker.services.PersonService
import org.springframework.stereotype.Service
import java.util.*
import java.util.logging.Logger

@Service
class PersonMapper {

    fun mapEntityToDTO(person: Person): PersonDTOv2 {
        val dto = PersonDTOv2()

        dto.id = person.id
        dto.firstName = person.firstName
        dto.lastName = person.lastName
        dto.address = person.address
        dto.birthDay = Date()
        dto.gender = person.gender

        return dto;
    }

    fun mapDTOtoEntity(dto: PersonDTOv2): Person {
        val entity = Person()

        entity.id = dto.id
        entity.firstName = dto.firstName
        entity.lastName = dto.lastName
        entity.address = dto.address
        entity.gender = dto.gender

        return entity
    }
}