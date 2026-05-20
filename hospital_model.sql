
------------------------------------------------------------
-- ΕΡΓΑΣΤΗΡΙΟ
------------------------------------------------------------
CREATE TABLE ERGASTIRIO (
    ONOMA        VARCHAR2(100) PRIMARY KEY,
    DIEYTHYNTIS  VARCHAR2(100)
);

------------------------------------------------------------
-- ΤΗΛΕΦΩΝΟ ΕΡΓΑΣΤΗΡΙΟΥ
-- 1 Εργαστήριο → Πολλά τηλέφωνα
------------------------------------------------------------
CREATE TABLE TILEFONO_ERGASTIRIOU (
    TILEFONO            VARCHAR2(20),
    ONOMA_ERGASTIRIOU   VARCHAR2(100),
    CONSTRAINT TILEFONO_ERG_PK
        PRIMARY KEY (TILEFONO, ONOMA_ERGASTIRIOU),
    CONSTRAINT TILEFONO_ERG_ERG_FK
        FOREIGN KEY (ONOMA_ERGASTIRIOU)
        REFERENCES ERGASTIRIO(ONOMA)
);

------------------------------------------------------------
-- ΚΛΙΝΙΚΗ
------------------------------------------------------------
CREATE TABLE KLINIKI (
    ONOMA             VARCHAR2(100) PRIMARY KEY,
    DIEYTHYNTIS       VARCHAR2(100),
    ARITHMOS_KLINWN   NUMBER,
    ARITHMOS_ASTHENWN NUMBER
);

------------------------------------------------------------
-- ΝΟΣΗΛΕΥΤΗΣ
------------------------------------------------------------
CREATE TABLE NOSILEYTIS (
    AT          VARCHAR2(20) PRIMARY KEY,
    ONOMA       VARCHAR2(100),
    EPWNYMO     VARCHAR2(100),
    EMAIL       VARCHAR2(200),
    TILEFONO    VARCHAR2(20),
    POLI        VARCHAR2(100),
    DIEYTHINSI  VARCHAR2(200),
    EIDIKOTITA  VARCHAR2(100)
);

------------------------------------------------------------
-- ΕΡΓΑΖΕΤΑΙ (Νοσηλευτής σε Κλινική)  M:N
------------------------------------------------------------
CREATE TABLE ERGAZETAI (
    ONOMA_KLINIKIS  VARCHAR2(100),
    AT_NOSILEYTI    VARCHAR2(20),
    CONSTRAINT ERGAZETAI_PK
        PRIMARY KEY (ONOMA_KLINIKIS, AT_NOSILEYTI),
    CONSTRAINT ERGAZETAI_KLINIKI_FK
        FOREIGN KEY (ONOMA_KLINIKIS)
        REFERENCES KLINIKI(ONOMA),
    CONSTRAINT ERGAZETAI_NOSILEYTIS_FK
        FOREIGN KEY (AT_NOSILEYTI)
        REFERENCES NOSILEYTIS(AT)
);

------------------------------------------------------------
-- ΠΑΡΑΪΑΤΡΙΚΟ ΠΡΟΣΩΠΙΚΟ
------------------------------------------------------------
CREATE TABLE PARAIATRIKO_PROSOPIKO (
    AT                 VARCHAR2(20) PRIMARY KEY,
    AFM                VARCHAR2(20),
    ONOMA              VARCHAR2(100),
    EPWNYMO            VARCHAR2(100),
    EIDIKOTITA         VARCHAR2(100),
    ONOMA_ERGASTIRIOU  VARCHAR2(100),
    CONSTRAINT PARA_ERG_FK
        FOREIGN KEY (ONOMA_ERGASTIRIOU)
        REFERENCES ERGASTIRIO(ONOMA)
);

------------------------------------------------------------
-- ΙΑΤΡΟΣ
------------------------------------------------------------
CREATE TABLE IATROS (
    AT                 VARCHAR2(20) PRIMARY KEY,
    EPWNYMO            VARCHAR2(100),
    ONOMA              VARCHAR2(100),
    EIDIKOTITA         VARCHAR2(100),
    DIEYTHINSI         VARCHAR2(200),
    POLI               VARCHAR2(100),
    TILEFONO           VARCHAR2(20),
    EMAIL              VARCHAR2(200),
    ONOMA_ERGASTIRIOU  VARCHAR2(100),
    ONOMA_KLINIKIS     VARCHAR2(100),
    CONSTRAINT IATROS_ERG_FK
        FOREIGN KEY (ONOMA_ERGASTIRIOU)
        REFERENCES ERGASTIRIO(ONOMA),
    CONSTRAINT IATROS_KLINIKI_FK
        FOREIGN KEY (ONOMA_KLINIKIS)
        REFERENCES KLINIKI(ONOMA)
);
