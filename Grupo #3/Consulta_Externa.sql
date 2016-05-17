CREATE TABLE HPTL.HPTL_CITAS (
		ID INTEGER NOT NULL,
		PACIENTES_ID INTEGER NOT NULL,
		CLILNICAS_ID INTEGER NOT NULL,
		DOCTORES_ID INTEGER NOT NULL,
		FECHA_CITA DATE,
		HORA_CITA TIME,
		CONSTRAINT HPTL_CITAS_PK PRIMARY KEY (ID),
		CONSTRAINT HPTL_PAC_PK_HTPL_CIT_FK FOREIGN KEY (PACIENTES_ID) REFERENCES HTPL.HPTL_PACIENTES(ID),
		CONSTRAINT HPTL_DOC_PK_HTPL_CIT_FK FOREIGN KEY (DOCTORES_ID) REFERENCES HTPL.HPTL_DOCTORES(ID)
		CONSTRAINT HPTL_CLI_PK_HTPL_CIT_FK FOREIGN KEY (CLINICAS_ID) REFERENCES HTPL.HPTL_CLINICAS(ID)
)

CREATE TABLE HPTL.HPTL_HIS_MEDICA_ENCA (
		ID INTEGER NOT NULL,
		PACIENTES_ID INTEGER NOT NULL,
		CONSTRAINT HPTL_HIS_MEDICA_ENCA_PK PRIMARY KEY (ID),
		CONSTRAINT HPTL_PAC_PK_HTPL_HIS_FK FOREIGN KEY (PACIENTES_ID) REFERENCES HPTL.HPTL_PACIENTES(ID)
)

CREATE TABLE HPTL.HPTL_HIS_MEDICA_DETA (
		ID INTEGER NOT NULL,
		HIS_MEDICA_ENCA_ID INTEGER NOT NULL,
		SINTOMAS VARCHAR(50),
		ENFERMEDADES_ID INTEGER,
		CONSTRAINT HPTL_HIS_MEDICA_DETA_PK PRIMARY KEY (ID),
		CONSTRAINT HPTL_HIS_PK_HPTL_HIS_FK FOREIGN KEY (HIS_MEDICA_ENCA_ID) REFERENCES HPTL.HPTL_HIS_MEDICA_ENCA(ID),
		CONSTRAINT HPTL_ENF_PK_HPTL_HIS_FK FOREIGN KEY (ENFERMEDADES_ID) REFERENCES HPTL.HPTL_ENFERMEDADES(ID)
)