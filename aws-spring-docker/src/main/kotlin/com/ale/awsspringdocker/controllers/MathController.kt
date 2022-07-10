package com.ale.awsspringdocker.controllers

import com.ale.awsspringdocker.converters.NumberConverter
import com.ale.awsspringdocker.exceptions.UnsupportedMathOperationException
import org.springframework.web.bind.annotation.PathVariable
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController
import kotlin.math.sqrt

@RestController("")
class MathController {
    @RequestMapping(value = ["/sum/{numberA}/{numberB}"])
    fun sum(@PathVariable(value = "numberA") numberA: String?,
            @PathVariable(value = "numberB") numberB: String?
    ): Double {
        if(!NumberConverter.isNumeric(numberA) || !NumberConverter.isNumeric(numberB))
            throw UnsupportedMathOperationException("Please, set a numeric value on /sum/a: number/b: number")
        return NumberConverter.convertToDouble(numberA) + NumberConverter.convertToDouble(numberB)
    }
    @RequestMapping(value = ["/sub/{numberA}/{numberB}"])
    fun subtraction(@PathVariable(value = "numberA") numberA: String?,
                    @PathVariable(value = "numberB") numberB: String?
    ): Double{
        if(!NumberConverter.isNumeric(numberA) || !NumberConverter.isNumeric(numberB))
            throw UnsupportedMathOperationException("Please, set a numeric value on /sum/a: number/b: number")
        return NumberConverter.convertToDouble(numberA) - NumberConverter.convertToDouble(numberB)
    }

    @RequestMapping(value = ["/mult/{numberA}/{numberB}"])
    fun multiplication(@PathVariable(value = "numberA") numberA: String?,
                       @PathVariable(value = "numberB") numberB: String?
    ): Double {
        if(!NumberConverter.isNumeric(numberA) || !NumberConverter.isNumeric(numberB))
            throw UnsupportedMathOperationException("Please, set a numeric value on /mult/a: number/b: number")
        return NumberConverter.convertToDouble(numberA) * NumberConverter.convertToDouble(numberB)
    }

    @RequestMapping(value = ["/div/{numberA}/{numberB}"])
    fun division(@PathVariable(value = "numberA") numberA: String?,
                 @PathVariable(value = "numberB") numberB: String?
    ): Double {
        if(!NumberConverter.isNumeric(numberA) || !NumberConverter.isNumeric(numberB))
            throw UnsupportedMathOperationException("Please, set a numeric value on /div/a: number/b: number")
        if(NumberConverter.convertToDouble(numberB) == 0.0)
            throw UnsupportedMathOperationException("Please, set a non-zero value for the second parameter")
        return NumberConverter.convertToDouble(numberA) / NumberConverter.convertToDouble(numberB)
    }

    @RequestMapping(value = ["/average/{numberA}/{numberB}"])
    fun average(@PathVariable(value = "numberA") numberA: String?,
                @PathVariable(value = "numberB") numberB: String?
    ): Double {
        if(!NumberConverter.isNumeric(numberA) || !NumberConverter.isNumeric(numberB))
            throw UnsupportedMathOperationException("Please, set a numeric value on /average/a: number/b: number")
        return (NumberConverter.convertToDouble(numberA) + NumberConverter.convertToDouble(numberB)) / 2
    }

    @RequestMapping(value = ["/squareRoot/{numberA}"])
    fun squareRoot(@PathVariable(value = "numberA") numberA: String?): Double {
        if(!NumberConverter.isNumeric(numberA))
            throw UnsupportedMathOperationException("Please, set a numeric value on /squareRoot/value: number")
        return sqrt(NumberConverter.convertToDouble(numberA))
    }



}