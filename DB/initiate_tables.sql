-- member
CREATE TABLE "MEMBER" (
	"ID_EMAIL" VARCHAR2(40) NOT NULL, -- email
	"PASSWORD" VARCHAR2(20) NULL,     -- password
	"BIRTHDAY" DATE         NULL,     -- birthday
	"TEL"      VARCHAR2(20) NULL,     -- tel
	"ADDRESS"  VARCHAR2(20) NULL      -- address
);

-- member 기본키
CREATE UNIQUE INDEX "PK_MEMBER"
	ON "MEMBER" ( -- member
		"ID_EMAIL" ASC -- email
	);

-- member
ALTER TABLE "MEMBER"
	ADD
		CONSTRAINT "PK_MEMBER" -- member 기본키
		PRIMARY KEY (
			"ID_EMAIL" -- email
		);

-- address
CREATE TABLE "ADDRESS" (
	"ID_ADDRESS"   VARCHAR2(20)  NOT NULL, -- id_address
	"NAME_ADDRESS" VARCHAR2(100) NULL      -- address_name
);

-- address 기본키
CREATE UNIQUE INDEX "PK_ADDRESS"
	ON "ADDRESS" ( -- address
		"ID_ADDRESS" ASC -- id_address
	);

-- address
ALTER TABLE "ADDRESS"
	ADD
		CONSTRAINT "PK_ADDRESS" -- address 기본키
		PRIMARY KEY (
			"ID_ADDRESS" -- id_address
		);

-- hobby
CREATE TABLE "HOBBY" (
	"ID_HOBBY"   VARCHAR2(20)  NOT NULL, -- id_hobby
	"NAME_HOBBY" VARCHAR2(100) NULL      -- address_name
);

-- hobby 기본키
CREATE UNIQUE INDEX "PK_HOBBY"
	ON "HOBBY" ( -- hobby
		"ID_HOBBY" ASC -- id_hobby
	);

-- hobby
ALTER TABLE "HOBBY"
	ADD
		CONSTRAINT "PK_HOBBY" -- hobby 기본키
		PRIMARY KEY (
			"ID_HOBBY" -- id_hobby
		);

-- member_hobby_rel
CREATE TABLE "MEMBER_HOBBY_REL" (
	"ID_EMAIL" VARCHAR2(40) NULL, -- email
	"ID_HOBBY" VARCHAR2(20) NULL  -- id_hobby
);

-- board
CREATE TABLE "BOARD" (
	"POST_SEQ" VARCHAR2(40)   NOT NULL, -- id_post
	"TITLE"    VARCHAR2(100)  NULL,     -- title
	"CONTENT"  VARCHAR2(2000) NULL,     -- content
	"ID_EMAIL" VARCHAR2(40)   NULL,     -- email
	"DATE"     DATE           NULL      -- date
);

-- board 기본키
CREATE UNIQUE INDEX "PK_BOARD"
	ON "BOARD" ( -- board
		"POST_SEQ" ASC -- id_post
	);

-- board
ALTER TABLE "BOARD"
	ADD
		CONSTRAINT "PK_BOARD" -- board 기본키
		PRIMARY KEY (
			"POST_SEQ" -- id_post
		);

-- sulgo
CREATE TABLE "SULGO" (
	"SULGO_SEQ" VARCHAR2(40) NOT NULL, -- sulgo_seq
	"ID_EMAIL"  VARCHAR2(40) NULL,     -- email
	"DATE"      DATE         NULL      -- date
);

-- sulgo 기본키
CREATE UNIQUE INDEX "PK_SULGO"
	ON "SULGO" ( -- sulgo
		"SULGO_SEQ" ASC -- sulgo_seq
	);

-- sulgo
ALTER TABLE "SULGO"
	ADD
		CONSTRAINT "PK_SULGO" -- sulgo 기본키
		PRIMARY KEY (
			"SULGO_SEQ" -- sulgo_seq
		);

-- coldhot
CREATE TABLE "COLDHOT" (
	"COLDHOT_SEQ" VARCHAR2(40) NOT NULL, -- coldhot_seq
	"CONDITION"   VARCHAR2(5)  NULL,     -- condition
	"ID_EMAIL"    VARCHAR2(40) NULL,     -- email
	"DATE"        DATE         NULL      -- date
);

-- coldhot 기본키
CREATE UNIQUE INDEX "PK_COLDHOT"
	ON "COLDHOT" ( -- coldhot
		"COLDHOT_SEQ" ASC -- coldhot_seq
	);

-- coldhot
ALTER TABLE "COLDHOT"
	ADD
		CONSTRAINT "PK_COLDHOT" -- coldhot 기본키
		PRIMARY KEY (
			"COLDHOT_SEQ" -- coldhot_seq
		);

-- image
CREATE TABLE "IMAGE" (
	"IMAGE_SEQ"      VARCHAR2(40)  NOT NULL, -- id_image
	"IMAGE_LOCATION" VARCHAR2(100) NULL,     -- image
	"POST_SEQ"       VARCHAR2(40)  NULL      -- id_post
);

-- image 기본키
CREATE UNIQUE INDEX "PK_IMAGE"
	ON "IMAGE" ( -- image
		"IMAGE_SEQ" ASC -- id_image
	);

-- image
ALTER TABLE "IMAGE"
	ADD
		CONSTRAINT "PK_IMAGE" -- image 기본키
		PRIMARY KEY (
			"IMAGE_SEQ" -- id_image
		);

-- member
ALTER TABLE "MEMBER"
	ADD
		CONSTRAINT "FK_ADDRESS_TO_MEMBER" -- address -> member
		FOREIGN KEY (
			"ADDRESS" -- address
		)
		REFERENCES "ADDRESS" ( -- address
			"ID_ADDRESS" -- id_address
		);

-- member_hobby_rel
ALTER TABLE "MEMBER_HOBBY_REL"
	ADD
		CONSTRAINT "FK_MEMBER_TO_MEMBER_HOBBY_REL" -- member -> member_hobby_rel
		FOREIGN KEY (
			"ID_EMAIL" -- email
		)
		REFERENCES "MEMBER" ( -- member
			"ID_EMAIL" -- email
		);

-- member_hobby_rel
ALTER TABLE "MEMBER_HOBBY_REL"
	ADD
		CONSTRAINT "FK_HOBBY_TO_MEMBER_HOBBY_REL" -- hobby -> member_hobby_rel
		FOREIGN KEY (
			"ID_HOBBY" -- id_hobby
		)
		REFERENCES "HOBBY" ( -- hobby
			"ID_HOBBY" -- id_hobby
		);

-- board
ALTER TABLE "BOARD"
	ADD
		CONSTRAINT "FK_MEMBER_TO_BOARD" -- member -> board
		FOREIGN KEY (
			"ID_EMAIL" -- email
		)
		REFERENCES "MEMBER" ( -- member
			"ID_EMAIL" -- email
		);

-- sulgo
ALTER TABLE "SULGO"
	ADD
		CONSTRAINT "FK_MEMBER_TO_SULGO" -- member -> sulgo
		FOREIGN KEY (
			"ID_EMAIL" -- email
		)
		REFERENCES "MEMBER" ( -- member
			"ID_EMAIL" -- email
		);

-- coldhot
ALTER TABLE "COLDHOT"
	ADD
		CONSTRAINT "FK_MEMBER_TO_COLDHOT" -- member -> coldhot
		FOREIGN KEY (
			"ID_EMAIL" -- email
		)
		REFERENCES "MEMBER" ( -- member
			"ID_EMAIL" -- email
		);

-- image
ALTER TABLE "IMAGE"
	ADD
		CONSTRAINT "FK_BOARD_TO_IMAGE" -- board -> image
		FOREIGN KEY (
			"POST_SEQ" -- id_post
		)
		REFERENCES "BOARD" ( -- board
			"POST_SEQ" -- id_post
		);