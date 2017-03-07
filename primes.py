#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
Programa que verifica si un número es primo o no
"""


class PrimeClass(object):
    """
    Your class documentation here
    Verificar si un numero ingresado es o no primo
    """

    def is_prime(self, num_int):
        """
        Ingresa un número de tipo entero
        se valida primero cuando es menor a 2
        y de 2 en adelante obtener su modulo
        para ver si es primo
        """
        if num_int < 2:
            return False
        else:
            if num_int == 2:
                return True
            else:
                for num in range(2, num_int):
                    if num_int % num == 0:
                        return False
                return True
    num_int = int(raw_input('Ingresa un numero: '))
    print is_prime('', num_int)
