SELECT name 
       ||'(' 
       ||Substr(occupation, 0, 1) 
       ||')' 
FROM   occupations 
ORDER  BY 1 ASC; 

SELECT 'There are a total of ' 
       ||Count(occupation) 
       ||' ' 
       ||Lower(occupation) 
       ||'s.' 
FROM   occupations 
GROUP  BY occupation 
ORDER  BY Count(occupation), 
          occupation ASC; 
