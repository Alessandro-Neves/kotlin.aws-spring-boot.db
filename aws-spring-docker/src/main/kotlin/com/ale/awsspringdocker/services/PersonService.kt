package com.ale.awsspringdocker.services

import com.ale.awsspringdocker.models.Person
import org.springframework.stereotype.Service
import java.util.concurrent.atomic.AtomicLong
import java.util.logging.Logger

@Service
class PersonService {
    private val counter: AtomicLong = AtomicLong()
    private val logger = Logger.getLogger(PersonService::class.java.name)

    fun findById(id: Long): Person {
        logger.info("Finding one person!")

        val person = this.mockPerson(0)

        return person
    }

    fun findAll(): List<Person> {
        logger.info("Finding all people!")

        val persons: MutableList<Person> = ArrayList()

        for (i in 1..7){
            val person = this.mockPerson(i)
            persons.add(person)
        }

        return persons
    }

    fun create(person: Person) = person
    fun update(person: Person) = person
    fun delete(id: Long){}

    fun mockPerson(i: Int): Person {
        val person = Person()

        person.id = counter.incrementAndGet()
        person.firstName = "Person Name $i"
        person.lastName = "Person Last Name $i"
        person.address = "Some address in Brazil $i"
        person.gender = if(i % 2 == 0) "masculino" else "feminino"

        return person
    }
}