SELECT doctor, 
       professor, 
       singer, 
       actor 
FROM   (SELECT name               AS Doctor, 
               Rank() 
                 over( 
                   ORDER BY name) rank 
        FROM   occupations 
        WHERE  occupation = 'Doctor') Doctor 
       full outer join (SELECT name               AS Professor, 
                               Rank() 
                                 over( 
                                   ORDER BY name) rank 
                        FROM   occupations 
                        WHERE  occupation = 'Professor') Professor 
                    ON ( Doctor.rank = Professor.rank ) 
       full outer join (SELECT name               AS Singer, 
                               Rank() 
                                 over( 
                                   ORDER BY name) rank 
                        FROM   occupations 
                        WHERE  occupation = 'Singer') Singer 
                    ON ( Doctor.rank = Singer.rank 
                          OR Professor.rank = Singer.rank ) 
       full outer join (SELECT name               AS Actor, 
                               Rank() 
                                 over( 
                                   ORDER BY name) rank 
                        FROM   occupations 
                        WHERE  occupation = 'Actor') Actor 
                    ON ( Doctor.rank = Actor.rank 
                          OR Professor.rank = Actor.rank 
                          OR Singer.rank = Actor.rank ); 
