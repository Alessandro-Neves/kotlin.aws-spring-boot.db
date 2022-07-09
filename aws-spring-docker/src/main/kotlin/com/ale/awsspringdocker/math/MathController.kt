package com.ale.awsspringdocker.math

import org.springframework.web.bind.annotation.PathVariable
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController
import java.util.concurrent.atomic.AtomicLong

@RestController("")
class MathController {

    val counter: AtomicLong = AtomicLong()

    @RequestMapping(value = ["/sum/{numberOne}/{numberTwo}"])
    fun sum(@PathVariable(value = "numberOne") numberOne: String?,
            @PathVariable(value = "numberTwo") numberTwo: String?
    ): Double {
        if(!this.isNumeric(numberOne) || !this.isNumeric(numberTwo))
            throw java.lang.Exception()
        return convertToDouble(numberOne) + convertToDouble(numberTwo)
    }

    private fun isNumeric(value: String?): Boolean {
        if (value.isNullOrBlank())
            return false
        val number = value.replace(",".toRegex(), ".")
        return number.matches("""[-+]?\d*\.?\d+""".toRegex())
    }

    private fun convertToDouble(value: String?): Double {
        if (value.isNullOrBlank())
            return 0.0
        val number = value.replace(",".toRegex(), ".")
        return if (isNumeric(number)) number.toDouble() else 0.0;
    }
}
