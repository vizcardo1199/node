-- measure with users
alter table frecuencia_cardiaca add CONSTRAINT users_frequencia_cardiaca_fk
FOREIGN KEY (row_users)
REFERENCES users (row_users)
ON delete NO ACTION
ON update NO ACTION;

alter table frecuencia_respiratoria add CONSTRAINT users_frecuencia_respiratoria_fk
FOREIGN KEY (row_users)
REFERENCES users (row_users)
ON delete NO ACTION
ON update NO ACTION;

alter table saturacion add CONSTRAINT users_saturacion_fk
FOREIGN KEY (row_users)
REFERENCES users (row_users)
ON delete NO ACTION
ON update NO ACTION;

alter table presion_arterial add CONSTRAINT users_presion_arterial_fk
FOREIGN KEY (row_users)
REFERENCES users (row_users)
ON delete NO ACTION
ON update NO ACTION;

alter table temperatura add CONSTRAINT users_temperatura_fk
FOREIGN KEY (row_users)
REFERENCES users (row_users)
ON delete NO ACTION
ON update NO ACTION;

alter table surveys add CONSTRAINT users_surveys_fk
FOREIGN KEY (row_users)
REFERENCES users (row_users)
ON delete NO ACTION
ON update NO ACTION;

-- measure with surveys

alter table frecuencia_cardiaca add CONSTRAINT survey_frequencia_cardiaca_fk
FOREIGN KEY (row_survey)
REFERENCES surveys (row_survey)
ON delete NO ACTION
ON update NO ACTION;

alter table frecuencia_respiratoria add CONSTRAINT survey_frecuencia_respiratoria_fk
FOREIGN KEY (row_survey)
REFERENCES surveys (row_survey)
ON delete NO ACTION
ON update NO ACTION;

alter table saturacion add CONSTRAINT survey_saturacion_fk
FOREIGN KEY (row_survey)
REFERENCES surveys (row_survey)
ON delete NO ACTION
ON update NO ACTION;

alter table presion_arterial add CONSTRAINT survey_presion_arterial_fk
FOREIGN KEY (row_survey)
REFERENCES surveys (row_survey)
ON delete NO ACTION
ON update NO ACTION;

alter table temperatura add CONSTRAINT survey_temperatura_fk
FOREIGN KEY (row_survey)
REFERENCES surveys (row_survey)
ON delete NO ACTION
ON update NO ACTION;