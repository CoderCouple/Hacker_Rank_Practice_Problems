SELECT node, 
       name 
FROM   (SELECT n      AS Node, 
               'Root' AS Name 
        FROM   bst 
        WHERE  p IS NULL 
        UNION 
        SELECT n      AS Node, 
               'Leaf' AS name 
        FROM   bst 
        WHERE  n NOT IN (SELECT DISTINCT Nvl(p, 0) 
                         FROM   bst) 
        UNION 
        SELECT n       AS Node, 
               'Inner' AS name 
        FROM   bst 
        WHERE  n IN (SELECT DISTINCT p 
                     FROM   bst) 
               AND p IS NOT NULL) 
ORDER  BY 1 ASC; 
