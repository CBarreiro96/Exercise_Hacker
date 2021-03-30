/*
 *============================================= Revising the Select Query I =====================================
 * Query all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA. 
 * The CITY table is described as follows:
 *            CITY
 *  -------------------------
 * | Field     |    Type     |
 *  -------------------------
 * |  Id       |   Number    |
 *  -------------------------
 * |  Name     | VARCHAR2(17)|
 *  ------------------------- 
 * |COUNTRYCODE| VARCHAR2(3) |
 *  -------------------------
 * | District  | VARCHAR2(20 |
 *  -------------------------
 * | Population|   NUMBER    |
 *  -------------------------
 */
 select * from city where CountryCode = 'USA' and population > 100000;
