DROP TABLE IF EXISTS madlibs;

CREATE TABLE madlibs (
        madlib_id varchar(15),
        madlib_string1 varchar(250) NOT NULL,
        madlib_string2 varchar(250) NOT NULL,
        madlib_string3 varchar(250) NOT NULL,
        madlib_string4 varchar(250) NOT NULL,
        madlib_string5 varchar(250) NOT NULL,
        madlib_string6 varchar(250) NOT NULL,
        madlib_string7 varchar(250) NOT NULL,
        
        
        CONSTRAINT pk_madlibr_id PRIMARY KEY(madlib_id)
        );
        
INSERT INTO madlibs (madlib_id, madlib_string1, madlib_string2, madlib_string3, madlib_string4, madlib_string5, madlib_string6, madlib_string7)
        VALUES ('winter', 'The yard is covered in snow and ', ' are hanging from the trees. They sparkle in the sunlight and look ', 
        '. I climb the hill with my sled in hand.  Reaching the top, I take a seat, push off, and ', ' down the hill like a rocket. After a bit, I realize I’m getting rather ',
        '. I head inside for a ', ' cup of ', '.');
