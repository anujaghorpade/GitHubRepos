--Start Writing Table ddls
DROP TABLE TESTCOMPONENTNEWCLASS;

CREATE TABLE TESTCOMPONENTNEWCLASS
(
	CUSTID NUMERIC(9,0)  NOT NULL  ,
	CUSTNAME CHARACTER VARYING(256)  ,
	CUSTCHAR CHARACTER VARYING(1)  ,
	CUSTDATE DATE ,
	TestComponentNewClassVer NUMERIC (4, 0)  NOT NULL ,
	dmLastUpdateDate	TIMESTAMP WITH TIME ZONE	NOT NULL  ,
	PRIMARY KEY ( 
	CUSTID  )
);
--End Writing Table ddls
--Start Writing Index ddls
--End Writing Index ddls
--Start Writing Keys ddls
--End Writing Keys ddls
--Start Writing Sequence ddls
--End Writing Sequence ddls
