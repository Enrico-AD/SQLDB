CREATE TABLE T_TESTE_DDL_SEQUENCE
(
    CD_TESTE_SQ NUMBER(3) NOT NULL,
    NM_TESTE_SQ VARCHAR2(30) NOT NULL
);

ALTER TABLE T_TESTE_DDL_SEQUENCE
ADD CONSTRAINT PK_TESTE_DDL_SEQUENCE
PRIMARY KEY (CD_TESTE_SQ);

DROP SEQUENCE SQ_TESTE_DDL_SEQUENCE;

CREATE SEQUENCE SQ_TESTE_DDL_SEQUENCE
    START WITH 1
    INCREMENT BY 1
    MAXVALUE 999
    NOCACHE
    NOCYCLE;
    
INSERT INTO T_TESTE_DDL_SEQUENCE
VALUES (SQ_TESTE_DDL_SEQUENCE.NEXTVAL, 'TESTE');

SELECT * FROM T_TESTE_DDL_SEQUENCE;

SELECT SQ_TESTE_DDL_SEQUENCE.CURRVAL FROM DUAL;

SELECT * FROM USER_SEQUENCES WHERE SEQUENCE_NAME = 'SQ_TESTE_DDL_SEQUENCE';

ALTER SEQUENCE SQ_TESTE_DDL_SEQUENCE
INCREMENT BY 5
MAXVALUE 900;

DROP SEQUENCE SQ_TESTE_DDL_SEQUENCE;