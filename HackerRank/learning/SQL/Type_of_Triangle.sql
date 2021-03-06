/*
* ================================== Type of Triangle ====================================
* Write a query identifying the type of each record in the TRIANGLES table using its three
* side lengths. Output one of the following statements for each record in the table:
* 
* - Equilateral: It's a triangle with 3 sides of equal length.
* - Isosceles: It's a triangle with 2 sides of equal length.
* - Scalene: It's a triangle with 3 sides of differing lengths.
* - Not A Triangle: The given values of A, B, and C don't form a triangle.
* 
* ----------------------------------- Input Format ---------------------------------------
* The TRIANGLES table is described as follows:
*                                  -------------------------
*                                 |  Column   |    Type     |
*                                  -------------------------
*                                 |     A     |   Integer   |
*                                  -------------------------
*                                 |     B     |   Integer   |
*                                  ------------------------- 
*                                 |     C     |   Integer   |
*                                  -------------------------
*
* Each row in the table denotes the lengths of each of a triangle's three sides.
*
* ------------------------------------ Sample Input ----------------------------------------
*                                  ----------------------------
*                                 |    A   |    B     |   C    |
*                                  ----------------------------
*                                 |   20   |    20    |   23   |
*                                  ----------------------------
*                                 |   20   |    20    |   20   |
*                                  ---------------------------- 
*                                 |   20   |    21    |   22   |
*                                  ----------------------------
*                                 |   13   |    14    |   30   |
*                                  ----------------------------
*
* ------------------------------------- Sample Output ---------------------------------------
*
*                                       Isosceles
*                                      Equilateral
*                                        Scalene
*                                      Not A Triangle
*/
select IF(A+B>C AND B+C>A AND C+A>B,IF(A=B AND B=C,'Equilateral',IF(A=B OR A=C OR B=C,'Isosceles','Scalene')),'Not A Triangle') FROM TRIANGLES ;