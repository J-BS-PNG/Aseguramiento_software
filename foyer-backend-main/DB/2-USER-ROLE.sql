
CREATE TABLE ROLE(
	ROLE_TYPE_ID INT NOT NULL PRIMARY KEY,
    VALUE  VARCHAR(64) NOT NULL UNIQUE
);

CREATE TABLE USER(
	USER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	ID_NUMBER VARCHAR(64) NOT NULL UNIQUE,
    NAME VARCHAR(64) NOT NULL,
    SURNAME VARCHAR(128) NOT NULL,
    EMAIL VARCHAR(128) NOT NULL UNIQUE,
    PASSWORD VARCHAR(128) NOT NULL,
    NEW_USER INT NOT NULL,
	ROLE INT NOT NULL,
    FOREIGN KEY(ROLE) REFERENCES ROLE(ROLE_TYPE_ID)
);