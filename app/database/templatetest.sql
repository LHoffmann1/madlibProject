CREATE TABLE template (
        template_id serial,
        template_string varchar(500) NOT NULL,
        template_input varchar(20) NOT NULL,
        CONSTRAINT pk_template_id PRIMARY KEY(template_id)
        );
        
INSERT INTO template (template_string, template_input)
        VALUES ('One day I woke up and looked outside. Right in front of me was a giant ', 'spider');