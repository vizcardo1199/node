        create TABLE super_user (
            row_super_user INT(11) NOT NULL AUTO_INCREMENT,
            create_user VARCHAR(100) NOT NULL,
            state BOOLEAN DEFAULT true NOT NULL,
            update_date DATETIME,
            update_user VARCHAR(100),
            create_date DATETIME NOT NULL,
            PRIMARY KEY (row_super_user)
        );

        create TABLE users (
            row_users INT(11) NOT NULL AUTO_INCREMENT,
            us_name VARCHAR(50),
            us_edad INT(5),
            US_genero VARCHAR(15),
            us_pais VARCHAR(50),
            us_departamento VARCHAR(50) ,
            us_distrito VARCHAR(50) ,
            us_direccion VARCHAR(50),
            us_telefono INT(15),
            us_mail VARCHAR(80),
            create_user VARCHAR(100) NOT NULL,
            state BOOLEAN DEFAULT true NOT NULL,
            update_date DATETIME,
            update_user VARCHAR(100),
            create_date DATETIME NOT NULL,
            PRIMARY KEY (row_users)
        );

        -- Tables of sensors

        create TABLE frecuencia_cardiaca (
            row_frecuencia_cardiaca INT(11) NOT NULL AUTO_INCREMENT,
            row_users INT(11) NOT NULL,
            row_survey INT(11),
            fc_eje_x DECIMAL(30,10),
            fc_eje_y DECIMAL(30,10),
            create_user VARCHAR(100) NOT NULL,
            state BOOLEAN DEFAULT true NOT NULL,
            update_date DATETIME,
            update_user VARCHAR(100),
            create_date DATETIME NOT NULL,
            PRIMARY KEY (row_frecuencia_cardiaca)
        );

        create TABLE frecuencia_respiratoria (
            row_frecuencia_respiratoria INT(11) NOT NULL AUTO_INCREMENT,
            row_users INT(11) NOT NULL,
            row_survey INT(11),
            fc_eje_x DECIMAL(30,10),
            fc_eje_y DECIMAL(30,10),
            create_user VARCHAR(100) NOT NULL,
            state BOOLEAN DEFAULT true NOT NULL,
            update_date DATETIME,
            update_user VARCHAR(100),
            create_date DATETIME NOT NULL,
            PRIMARY KEY (row_frecuencia_respiratoria)     
        );

        create TABLE saturacion (
            row_saturacion INT(11) NOT NULL AUTO_INCREMENT,
            row_users INT(11) NOT NULL,
            row_survey INT(11),
            sat_eje_x DECIMAL(30,10),
            sat_eje_y DECIMAL(30,10),
            create_user VARCHAR(100) NOT NULL,
            state BOOLEAN DEFAULT true NOT NULL,
            update_date DATETIME,
            update_user VARCHAR(100),
            create_date DATETIME NOT NULL,
            PRIMARY KEY (row_saturacion)
        );

        create TABLE presion_arterial (
            row_presion_arterial INT(11) NOT NULL AUTO_INCREMENT,
            row_users INT(11) NOT NULL,
            row_survey INT(11),
            pa_eje_x DECIMAL(30,10),
            pa_eje_y DECIMAL(30,10),
            create_user VARCHAR(100) NOT NULL,
            state BOOLEAN DEFAULT true NOT NULL,
            update_date DATETIME,
            update_user VARCHAR(100),
            create_date DATETIME NOT NULL,
            PRIMARY KEY (row_presion_arterial)
        );

        create TABLE temperatura (
            row_temperatura INT(11) NOT NULL AUTO_INCREMENT,
            row_users INT(11) NOT NULL,
            row_survey INT(11),
            t_eje_x DECIMAL(30,10),
            t_eje_y DECIMAL(30,10),
            create_user VARCHAR(100) NOT NULL,
            state BOOLEAN DEFAULT true NOT NULL,
            update_date DATETIME,
            update_user VARCHAR(100),
            create_date DATETIME NOT NULL,
            PRIMARY KEY (row_temperatura)
        );

        -- table topics

        create TABLE mqtt_topics (
            row_topic INT AUTO_INCREMENT NOT NULL,
            tp_topic VARCHAR(30) NOT NULL,
            tp_message VARCHAR(500) NOT NULL,
            create_user VARCHAR(100) NOT NULL,
            state BOOLEAN DEFAULT true NOT NULL,
            update_date DATETIME,
            update_user VARCHAR(100),
            create_date DATETIME NOT NULL,
            PRIMARY KEY (row_topic)
        );

        -- table survey 
        create TABLE surveys (
            row_survey INT(11) NOT NULL AUTO_INCREMENT,
            row_users INT(11) NOT NULL,
            sv_measure_timestamp DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
            sv_init_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
            sv_end_date DATETIME NOT NULL,
            sv_survey_processed BOOLEAN NOT NULL DEFAULT FALSE,
            create_user VARCHAR(100) NOT NULL,
            state BOOLEAN DEFAULT true NOT NULL,
            update_date DATETIME,
            update_user VARCHAR(100),
            create_date DATETIME NOT NULL,
            PRIMARY KEY (row_survey)
        );
