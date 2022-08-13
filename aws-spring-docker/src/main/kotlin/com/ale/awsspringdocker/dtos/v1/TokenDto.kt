package com.ale.awsspringdocker.dtos.v1

import java.util.Date

data class TokenDto (
    val username: String? = null,
    val accessToken: String? = null,
    val refreshToken: String? = null,
    val authenticated: Boolean? = null,
    val created: Date? = null,
    val expiration: Date? = null
)