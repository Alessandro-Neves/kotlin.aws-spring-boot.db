package com.ale.awsspringdocker.exceptions

import org.springframework.http.HttpStatus
import org.springframework.security.core.AuthenticationException
import org.springframework.web.bind.annotation.ResponseStatus
/*
 *  This class is a Exception that represents a error on user authentication process
 */
@ResponseStatus(HttpStatus.FORBIDDEN)
class InvalidJwtAuthenticationException(exception: String?) : AuthenticationException(exception)