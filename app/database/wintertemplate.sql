DROP TABLE IF EXISTS madlibs;

CREATE TABLE madlibs (
        madlib_id varchar(15),
        madlib_string1 varchar(250), 
        madlib_string2 varchar(250), 
        madlib_string3 varchar(250), 
        madlib_string4 varchar(250), 
        madlib_string5 varchar(250), 
        madlib_string6 varchar(250), 
        madlib_string7 varchar(250), 
        
        
        
        CONSTRAINT pk_madlibr_id PRIMARY KEY(madlib_id)
        );
        
INSERT INTO madlibs (madlib_id, madlib_string1, madlib_string2, madlib_string3, madlib_string4, madlib_string5, madlib_string6, madlib_string7)
        VALUES ('winter', 'The yard is covered in snow and ', ' are hanging from the trees. They sparkle in the sunlight and look ', 
        'I climb the hill with my sled in hand.  Reaching the top, I take a seat, push off, and ', ' down the hill like a rocket. After a bit, I realize I am getting rather ',
        ' I head inside for a ', ' cup of ', ' Yum!'),
        ('spring', 'The sun is shining and all of the ', 'are ', ' The grass is so ', ' and the ',' are ', ' in the trees. I throw my head back and let the ', ' hit my face. It is a great day to be '),
        ('summer', 'We race down to the ','and ', ' into the waves. The water feels ', ' as we splash about. Suddenly, I think I see a ', ' coming right for us. I ', ' only to realize it is my brother playing a ', ' I am mad, but I just roll my eyes and '),
        ('fall', 'My friend and I ',' leaves into a gigantic ' , ' It is a swirl of red, yellow, and orange. So ','! All of a sudden, my ', ' bounds across the yard and pounces into the pile. All of the', ' go everywhere as he climbs out, his tail ', ' We drop our rakes, laughing, and head aross the yard to throw the ');
        
