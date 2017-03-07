#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
Your module documentation here
No modules
"""


class CalculatorClass(object):
    """
    has a method calculates the sum of a list of integer numbers
    """
    num_list = []

    def sum(self, num_list):
        """
        Your method documentation here
        method tha recevie the size of the list and calculate his numbers sum
        """
        return "not implement yet"  # Remove this dummy line
    suma = 0
    entrada = int(raw_input('Ingresa el tamaño de la lista: '))
    for num in range(entrada):
        num_list.append(int(raw_input('Numero: ')))
    for numero in num_list:
        suma = suma + numero
    print 'La suma es: ', suma
