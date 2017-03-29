--Start Writing Table ddls
DROP TABLE ADDRESS1;

CREATE TABLE ADDRESS1
(
	AAADDRESSIDAA NUMERIC(9,0)  NOT NULL  ,
	AACITYAA CHARACTER VARYING(20)  ,
	AACOUNTRYAA CHARACTER VARYING(20)  ,
	AACUSTIDAA NUMERIC(9,0) ,
	address1Ver NUMERIC (4, 0)  NOT NULL ,
	dmLastUpdateDate	TIMESTAMP WITH TIME ZONE	NOT NULL  ,
	PRIMARY KEY ( 
	AAADDRESSIDAA  )
);
DROP TABLE BASIC1;

CREATE TABLE BASIC1
(
	AACUSTIDAA NUMERIC(9,0)  NOT NULL  ,
	AAFIRSTNAMEAA CHARACTER VARYING(20)  ,
	AALASTNAMEAA CHARACTER VARYING(20)  ,
	AAAGEAA NUMERIC(9,0) ,
	basic1Ver NUMERIC (4, 0)  NOT NULL ,
	dmLastUpdateDate	TIMESTAMP WITH TIME ZONE	NOT NULL  ,
	PRIMARY KEY ( 
	AACUSTIDAA  )
);
--End Writing Table ddls
--Start Writing Index ddls
--End Writing Index ddls
--Start Writing Keys ddls
ALTER TABLE address1 ADD CONSTRAINT CRUD_CustomerAddress_custID_fkey FOREIGN KEY ( 
	AACUSTIDAA 
 ) REFERENCES basic1 ( 	AACUSTIDAA 
)  ON DELETE CASCADE ;
ALTER TABLE address1 DROP
CONSTRAINT CRUD_CustomerAddress_custID_fkey; 
--End Writing Keys ddls
--Start Writing Sequence ddls
--End Writing Sequence ddls
