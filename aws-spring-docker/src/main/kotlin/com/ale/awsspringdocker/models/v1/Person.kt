package com.ale.awsspringdocker.models.v1

import jakarta.persistence.*

/* Não podemos usar val em data class porque o JPA não foi desenhado
    para trabalhar com objetos imutáveis
*/
@Entity
@Table(name = "person_table")
data class
Person(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    var id: Long = 0,

    @Column(name = "first_name",
            nullable = false,
            length = 80)
    var firstName: String = "",

    @Column(name = "last_name",
            nullable = false,
            length = 80)
    var lastName: String = "",

    @Column(nullable = false, length = 100)
    var address: String = "",

    @Column(nullable = false, length = 10)
    var gender: String = ""
)
