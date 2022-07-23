package com.ale.awsspringdocker.dtos.v1

data class PersonDTO(
    var id: Long = 0,
    var firstName: String = "",
    var lastName: String = "",
    var address: String = "",
    var gender: String = ""
)
