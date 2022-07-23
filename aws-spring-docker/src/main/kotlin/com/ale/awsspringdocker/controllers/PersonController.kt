package com.ale.awsspringdocker.controllers

import com.ale.awsspringdocker.models.Person
import com.ale.awsspringdocker.services.PersonService
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.http.HttpStatus.NO_CONTENT
import org.springframework.http.MediaType
import org.springframework.web.bind.annotation.*

@RestController
@RequestMapping("/person")
class PersonController {
    @Autowired
    private lateinit var personService: PersonService

    @GetMapping(produces = [MediaType.APPLICATION_JSON_VALUE])
    fun findAll(): List<Person> {
        return personService.findAll()
    }

    @GetMapping(value = ["/{id}"],
                produces = [MediaType.APPLICATION_JSON_VALUE])
    fun findById(@PathVariable(value = "id") id: Long): Person {
        return personService.findById(id)
    }

    @PostMapping(produces = [MediaType.APPLICATION_JSON_VALUE])
    fun create(@RequestBody person: Person): Person {
        return personService.create(person)
    }

    @PutMapping(consumes = [MediaType.APPLICATION_JSON_VALUE],
                produces = [MediaType.APPLICATION_JSON_VALUE])
    fun update(@RequestBody person: Person): Person {
        return personService.update(person)
    }

    @DeleteMapping( value = ["/{id}"],
                    produces = [MediaType.APPLICATION_JSON_VALUE])
    @ResponseStatus(NO_CONTENT)
    fun delete(@PathVariable(value = "id") id: Long) {
        personService.delete(id)
    }

}