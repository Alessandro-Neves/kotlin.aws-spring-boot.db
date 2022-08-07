package com.ale.awsspringdocker.models.v1

import jakarta.persistence.*
import org.springframework.security.core.GrantedAuthority

@Entity
@Table(name = "permission")
class Permission : GrantedAuthority {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    var id: Long = 0

    @Column(length = 255)
    var description: String? = null


    override fun getAuthority(): String {
        return description!!
    }


}