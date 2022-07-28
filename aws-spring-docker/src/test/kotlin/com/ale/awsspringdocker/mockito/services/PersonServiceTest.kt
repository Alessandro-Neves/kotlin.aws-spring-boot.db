package com.ale.awsspringdocker.mockito.services

import com.ale.awsspringdocker.exceptions.RequiredObjectIsNullException
import com.ale.awsspringdocker.repositories.PersonRepository
import com.ale.awsspringdocker.services.PersonService
import com.ale.awsspringdocker.unitestes.mapper.mocks.MockPerson
import org.junit.jupiter.api.Assertions.*
import org.junit.jupiter.api.BeforeEach
import org.junit.jupiter.api.Test

import org.junit.jupiter.api.extension.ExtendWith
import org.mockito.InjectMocks
import org.mockito.Mock

import org.mockito.Mockito.`when`
import org.mockito.MockitoAnnotations
import org.mockito.junit.jupiter.MockitoExtension
import java.util.*

@ExtendWith(MockitoExtension::class)
internal class PersonServiceTest {

    private lateinit var inputObject: MockPerson

    @InjectMocks
    private lateinit var service: PersonService

    @Mock
    private lateinit var repository: PersonRepository

    @BeforeEach
    fun setUpMock() {
        inputObject = MockPerson()

        MockitoAnnotations.openMocks(this)
    }

    @Test
    fun findAll() {
        val persons = inputObject.mockEntityList()

        `when`(repository.findAll()).thenReturn((persons))

        val results = service.findAll()

        assertNotNull(results)
        assertEquals(14, results.size)
    }

    @Test
    fun findById() {
        val person = inputObject.mockEntity(1)
        person.id = 1L

        `when`(repository.findById(1)).thenReturn(Optional.of(person))

        val result = service.findById(1)

        assertNotNull(result)
        assertNotNull(result.key)
        assertNotNull(result.lastName)
        assertTrue(result.links.toString().contains("/person/1"))
        assertEquals("Address Test1", result.address)
        assertEquals("First Name Test1", result.firstName)
        assertEquals("Last Name Test1", result.lastName)
        assertEquals("Female", result.gender)

    }

    @Test
    fun create() {
        val entity = inputObject.mockEntity(1)
        val persisted = entity.copy()
        persisted.id = 1

        val dto = inputObject.mockDTO(1)

        `when`(repository.save(entity)).thenReturn(persisted)

        val result = service.create(dto)

        assertNotNull(result)
        assertNotNull(result.key)
        assertNotNull(result.firstName)
        assertNotNull(result.links)
        assertTrue(result.links.toString().contains("/person/1"))
        assertEquals("Address Test1", result.address)
        assertEquals("First Name Test1", result.firstName)
        assertEquals("Last Name Test1", result.lastName)
        assertEquals("Female", result.gender)
    }

    @Test
    fun update() {
        val entity = inputObject.mockEntity(1)
        val persisted = entity.copy()
        persisted.id = 1

        val dto = inputObject.mockDTO(1)

        `when`(repository.findById(1)).thenReturn(Optional.of(entity))
        `when`(repository.save(entity)).thenReturn(persisted)

        val result = service.update(dto)

        assertNotNull(result)
        assertNotNull(result.key)
        assertNotNull(result.firstName)
        assertNotNull(result.links)
        assertTrue(result.links.toString().contains("/person/1"))
        assertEquals("Address Test1", result.address)
        assertEquals("First Name Test1", result.firstName)
        assertEquals("Last Name Test1", result.lastName)
        assertEquals("Female", result.gender)
    }

    @Test
    fun createWithNullPerson () {
        val exception: Exception = assertThrows(
            RequiredObjectIsNullException::class.java
        ) {service.create(null)}

        val expectedMessage = "It is not allowed to persist a null object!"
        val actualMessage = exception.message

        assertTrue(actualMessage!!.contains(expectedMessage))
    }

    @Test
    fun updateWithNullPerson () {
        val exception: Exception = assertThrows(
            RequiredObjectIsNullException::class.java
        ) {service.update(null)}

        val expectedMessage = "It is not allowed to persist a null object!"
        val actualMessage = exception.message

        assertTrue(actualMessage!!.contains(expectedMessage))
    }
}