package com.ale.awsspringdocker.controllers

import com.ale.awsspringdocker.dtos.v1.PersonDTO
import com.ale.awsspringdocker.dtos.v2.PersonDTO as PersonDTOv2
import com.ale.awsspringdocker.services.PersonService
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.http.HttpStatus.NO_CONTENT
import org.springframework.http.MediaType
import org.springframework.web.bind.annotation.*

@CrossOrigin(origins = ["http://localhost:8080", "http://awsspringdocker.com.br"])
@RestController
@RequestMapping("/person")
class PersonController {
    @Autowired
    private lateinit var personService: PersonService

    @GetMapping(produces = [MediaType.APPLICATION_JSON_VALUE])
    fun findAll(): List<PersonDTO> {
        return personService.findAll()
    }

    @GetMapping(value = ["/{id}"],
                produces = [MediaType.APPLICATION_JSON_VALUE])
    fun findById(@PathVariable(value = "id") id: Long): PersonDTO {
        return personService.findById(id)
    }

    @PostMapping(   consumes = [MediaType.APPLICATION_JSON_VALUE],
                    produces = [MediaType.APPLICATION_JSON_VALUE])
    fun create(@RequestBody dto: PersonDTO): PersonDTO {
        return personService.create(dto)
    }

    @PostMapping(   value = ["/v2"],
                    consumes = [MediaType.APPLICATION_JSON_VALUE],
                    produces = [MediaType.APPLICATION_JSON_VALUE])
    fun createV2(@RequestBody dto: PersonDTOv2): PersonDTOv2 {
        return personService.createV2(dto)
    }

    @PutMapping(consumes = [MediaType.APPLICATION_JSON_VALUE],
                produces = [MediaType.APPLICATION_JSON_VALUE])
    fun update(@RequestBody dto: PersonDTO): PersonDTO {
        return personService.update(dto)
    }

    @DeleteMapping( value = ["/{id}"],
                    produces = [MediaType.APPLICATION_JSON_VALUE])
    @ResponseStatus(NO_CONTENT)
    fun delete(@PathVariable(value = "id") id: Long) {
        personService.delete(id)
    }

}