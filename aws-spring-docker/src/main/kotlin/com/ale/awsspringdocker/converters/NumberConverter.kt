package com.ale.awsspringdocker.converters

object NumberConverter {
    fun isNumeric(value: String?): Boolean {
        if (value.isNullOrBlank())
            return false
        val number = value.replace(",".toRegex(), ".")
        return number.matches("""[-+]?\d*\.?\d+""".toRegex())
    }

    fun convertToDouble(value: String?): Double {
        if (value.isNullOrBlank())
            return 0.0
        val number = value.replace(",".toRegex(), ".")
        return if (isNumeric(number)) number.toDouble() else 0.0
    }
}