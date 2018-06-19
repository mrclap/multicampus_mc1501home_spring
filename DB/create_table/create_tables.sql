/* 새 테이블 */
CREATE TABLE USERS (
	USER_SEQ VARCHAR2(100) NOT NULL, /* 새 컬럼 */
	USER_ID VARCHAR2(100), /* 새 컬럼2 */
	USER_PASSWORD VARCHAR2(100), /* 새 컬럼3 */
	USER_NAME VARCHAR2(100), /* 새 컬럼6 */
	USER_BIRTH VARCHAR2(100), /* 새 컬럼5 */
	USER_TEL VARCHAR2(100), /* 새 컬럼7 */
	ADDRESS_SEQ VARCHAR2(100) /* 새 컬럼4 */
);

CREATE UNIQUE INDEX PK_USERS
	ON USERS (
		USER_SEQ ASC
	);

ALTER TABLE USERS
	ADD
		CONSTRAINT PK_USERS
		PRIMARY KEY (
			USER_SEQ
		);

/* 새 테이블2 */
CREATE TABLE BOARD (
	BOARD_SEQ VARCHAR2(100) NOT NULL, /* 새 컬럼 */
	BOARD_TITLE VARCHAR2(100), /* 새 컬럼2 */
	BOARD_DESCIPT VARCHAR2(2000), /* 새 컬럼5 */
	BOARD_DATE VARCHAR2(100), /* 새 컬럼3 */
	BOARD_VIEW NUMBER, /* 새 컬럼4 */
	USER_SEQ VARCHAR2(100) /* 새 컬럼6 */
);

CREATE UNIQUE INDEX PK_BOARD
	ON BOARD (
		BOARD_SEQ ASC
	);

ALTER TABLE BOARD
	ADD
		CONSTRAINT PK_BOARD
		PRIMARY KEY (
			BOARD_SEQ
		);

/* 새 테이블3 */
CREATE TABLE AUTH (
	AUTH_SEQ VARCHAR2(100) NOT NULL, /* 새 컬럼 */
	AUTH_NAME VARCHAR2(100) /* 새 컬럼2 */
);

CREATE UNIQUE INDEX PK_AUTH
	ON AUTH (
		AUTH_SEQ ASC
	);

ALTER TABLE AUTH
	ADD
		CONSTRAINT PK_AUTH
		PRIMARY KEY (
			AUTH_SEQ
		);

/* 새 테이블4 */
CREATE TABLE AUTH_RELATION (
	USER_SEQ VARCHAR2(100), /* 새 컬럼 */
	AUTH_SEQ VARCHAR2(100) /* 새 컬럼2 */
);

/* 새 테이블5 */
CREATE TABLE HOBBY (
	HOBBY_SEQ VARCHAR2(100) NOT NULL, /* 새 컬럼 */
	HOBBY_NAME VARCHAR2(100) /* 새 컬럼2 */
);

CREATE UNIQUE INDEX PK_HOBBY
	ON HOBBY (
		HOBBY_SEQ ASC
	);

ALTER TABLE HOBBY
	ADD
		CONSTRAINT PK_HOBBY
		PRIMARY KEY (
			HOBBY_SEQ
		);

/* 새 테이블6 */
CREATE TABLE HOBBY_RELATION (
	USER_SEQ VARCHAR2(100), /* 새 컬럼 */
	HOBBY_SEQ VARCHAR2(100) /* 새 컬럼2 */
);

/* 새 테이블7 */
CREATE TABLE ADDRESS (
	ADDRESS_SEQ VARCHAR2(100) NOT NULL, /* 새 컬럼 */
	ADDRESS_NAME VARCHAR2(100) /* 새 컬럼2 */
);

CREATE UNIQUE INDEX PK_ADDRESS
	ON ADDRESS (
		ADDRESS_SEQ ASC
	);

ALTER TABLE ADDRESS
	ADD
		CONSTRAINT PK_ADDRESS
		PRIMARY KEY (
			ADDRESS_SEQ
		);

/* 새 테이블10 */
CREATE TABLE SULGO (
	USER_SEQ VARCHAR2(100) NOT NULL, /* 새 컬럼 */
	SULGO_DATE VARCHAR2(100) NOT NULL, /* 새 컬럼4 */
	SULGO_FLAG VARCHAR2(20) /* 새 컬럼3 */
);

CREATE UNIQUE INDEX PK_SULGO
	ON SULGO (
		USER_SEQ ASC,
		SULGO_DATE ASC
	);

ALTER TABLE SULGO
	ADD
		CONSTRAINT PK_SULGO
		PRIMARY KEY (
			USER_SEQ,
			SULGO_DATE
		);

/* 새 테이블11 */
CREATE TABLE COLD_HOT (
	USER_SEQ VARCHAR2(100) NOT NULL, /* 새 컬럼2 */
	COLD_HOT_DATE VARCHAR2(100) NOT NULL, /* 새 컬럼4 */
	COLD_HOT_FLAG VARCHAR2(20) /* 새 컬럼3 */
);

CREATE UNIQUE INDEX PK_COLD_HOT
	ON COLD_HOT (
		USER_SEQ ASC,
		COLD_HOT_DATE ASC
	);

ALTER TABLE COLD_HOT
	ADD
		CONSTRAINT PK_COLD_HOT
		PRIMARY KEY (
			USER_SEQ,
			COLD_HOT_DATE
		);

ALTER TABLE USERS
	ADD
		CONSTRAINT FK_ADDRESS_TO_USERS
		FOREIGN KEY (
			ADDRESS_SEQ
		)
		REFERENCES ADDRESS (
			ADDRESS_SEQ
		);

ALTER TABLE BOARD
	ADD
		CONSTRAINT FK_USERS_TO_BOARD
		FOREIGN KEY (
			USER_SEQ
		)
		REFERENCES USERS (
			USER_SEQ
		);

ALTER TABLE AUTH_RELATION
	ADD
		CONSTRAINT FK_USERS_TO_AUTH_RELATION
		FOREIGN KEY (
			USER_SEQ
		)
		REFERENCES USERS (
			USER_SEQ
		);

ALTER TABLE AUTH_RELATION
	ADD
		CONSTRAINT FK_AUTH_TO_AUTH_RELATION
		FOREIGN KEY (
			AUTH_SEQ
		)
		REFERENCES AUTH (
			AUTH_SEQ
		);

ALTER TABLE HOBBY_RELATION
	ADD
		CONSTRAINT FK_USERS_TO_HOBBY_RELATION
		FOREIGN KEY (
			USER_SEQ
		)
		REFERENCES USERS (
			USER_SEQ
		);

ALTER TABLE HOBBY_RELATION
	ADD
		CONSTRAINT FK_HOBBY_TO_HOBBY_RELATION
		FOREIGN KEY (
			HOBBY_SEQ
		)
		REFERENCES HOBBY (
			HOBBY_SEQ
		);

ALTER TABLE SULGO
	ADD
		CONSTRAINT FK_USERS_TO_SULGO
		FOREIGN KEY (
			USER_SEQ
		)
		REFERENCES USERS (
			USER_SEQ
		);

ALTER TABLE COLD_HOT
	ADD
		CONSTRAINT FK_USERS_TO_COLD_HOT
		FOREIGN KEY (
			USER_SEQ
		)
		REFERENCES USERS (
			USER_SEQ
		);