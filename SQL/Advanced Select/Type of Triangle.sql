SELECT CASE 
         WHEN a + b <= c 
               OR b + c <= a 
               OR c + a <= b THEN 'Not A Triangle' 
         WHEN a = b 
              AND b = c 
              AND c = a THEN 'Equilateral' 
         WHEN a <> b 
              AND b <> c 
              AND c <> a THEN 'Scalene' 
         WHEN ( a = b 
                AND b <> c 
                AND c <> a ) 
               OR ( a <> b 
                    AND b = c 
                    AND c <> a ) 
               OR ( a <> b 
                    AND b <> c 
                    AND c = a ) THEN 'Isosceles' 
       END 
FROM   triangles; 
