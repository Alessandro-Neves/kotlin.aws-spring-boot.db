package com.ale.awsspringdocker.models

/* Não podemos usar val em data class porque o JPA não foi desenhado
    para trabalhar com objetos imutáveis
*/
data class Person(
    var id: Long = 0,
    var firstName: String = "",
    var lastName: String = "",
    var address: String = "",
    var gender: String = ""

)
