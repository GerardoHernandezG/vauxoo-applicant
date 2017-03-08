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

    def sum(self, num_list):
        """
        Your method documentation here
        method tha recevie the size of the list and calculate his numbers sum
        """
        suma = 0
        for numero in num_list:
            suma = suma + numero
        return suma
