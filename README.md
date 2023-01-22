# Ruby_learning
### After learning about ruby through practice exercises implement a rational type that should support at least the following operations.

1) Make a rational: Given integers  and , create a new rational with  as the numerator and  as the denominator. Trying to create a rational with denominator 0 is an error, but it should not crash your program. Instead, handle this case in a systematic way that makes sense within your programming language; the language-specific notes at the bottom may give you hints.

2) Get the numerator Returns the numerator of a given rational.

3) Get the denominator Returns the denominator of a given rational.

4) Get the numerator and denominator as a pair Returns both the numerator and denominator. Call this operation pair, i.e. calling pair on 5/3 gives (5, 3).

5) Convert to a string Returns the usual string representation of the rational. For instance, 5/3 would be the string “5/3”.

6) Convert the fraction to a floating point value Returns the value as the number as a floating point number. For example, 5/2 is 2.5, 1/3 is 0.3333, etc.

7) Test for equality Tests if two given rationals are equal. Be careful if either is not in lowest terms!

8) Test for order: less than Tests if a given rational is less than another given rational. Be careful with negative values, and when either is not in lowest terms!

9) Test if an integer Tests if a given rational is equal to an integer. For example, 4/1, 21/3, and 0/99 are all integers.

10) Add Adds two given rationals and returns a new rational that is there sum.

11) Multiply Multiply two given rationals and returns a new rational that is their product.

12) Divide Divide two given rationals and returns a new rational that is their quotient. Be careful to systematically handle possible division by zero.

13) Invert Invert a given rational and returns a new one with the numerator and denominator switched. For example, 2/3 inverts to 3/2. Make sure to systematically handle 0 numerators, e.g. 0/3 inverts to 3/0, which is not a rational.

14) Reduce to lowest terms Reduce a given rational and returns a new rational that is in lowest terms. For example, 36/20 reduces to 9/5. Use the greatest common divisor (GCD) algorithm to help do this. Be careful in the case where the numerator or denominator is negative.

15) Harmonic sum Given an integer n

### Also implement linear sorting and check the results
