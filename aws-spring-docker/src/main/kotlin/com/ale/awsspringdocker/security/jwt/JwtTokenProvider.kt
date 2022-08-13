package com.ale.awsspringdocker.security.jwt

import com.ale.awsspringdocker.dtos.v1.TokenDto
import com.auth0.jwt.JWT
import com.auth0.jwt.algorithms.Algorithm
import jakarta.annotation.PostConstruct
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.beans.factory.annotation.Value
import org.springframework.security.core.userdetails.UserDetailsService
import org.springframework.stereotype.Service
import org.springframework.web.servlet.support.ServletUriComponentsBuilder
import java.util.Base64
import java.util.Date

@Service
class JwtTokenProvider {
    @Value("\${security.jwt.token.secret-key:secret}")
    private var secretKey = "secret"

    @Value("\${security.jwt.token.secret-key:expire-length:3600000}")
    private var expireTimeTokenInMilliseconds = 3600000 //1h

    @Autowired
    private lateinit var userDetailsService: UserDetailsService

    private lateinit var algotithm: Algorithm

    @PostConstruct
    private fun init(){
        secretKey = Base64.getEncoder().encodeToString(secretKey.toByteArray())
        algotithm = Algorithm.HMAC256(secretKey.toByteArray())
    }

    fun createAccessToken(username: String, roles: List<String?>): TokenDto {
        val now = Date()
        val validity = Date(now.time + expireTimeTokenInMilliseconds)
        val accessToken = getAccessToken(username, roles, now, validity)
        val refreshToken = getRefreshToken(username, roles, now)
        return TokenDto(
            username = username,
            authenticated = true,
            accessToken = accessToken,
            refreshToken = refreshToken,
            created = now,
            expiration = validity
        )
    }

    private fun getAccessToken(username: String, roles: List<String?>, now: Date, validity: Date): String {
        val issueURL: String = ServletUriComponentsBuilder.fromCurrentContextPath().build().toUriString()
        return JWT.create()
            .withClaim("roles", roles)
            .withIssuedAt(now)
            .withExpiresAt(validity)
            .withSubject(username)
            .withIssuer(issueURL)
            .sign(algotithm)
            .trim()
    }

    private fun getRefreshToken(username: String, roles: List<String?>, now: Date): String {
        val validityRefreshToken = Date(now.time + expireTimeTokenInMilliseconds * 3) //3h
        return JWT.create()
            .withClaim("roles", roles)
            .withExpiresAt(validityRefreshToken)
            .withSubject(username)
            .sign(algotithm)
            .trim()
    }
    
}