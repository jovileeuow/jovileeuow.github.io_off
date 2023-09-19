DROP TABLE WAREHOUSE;

CREATE TABLE WAREHOUSE(
name		VARCHAR(50)	NOT NULL,
address	    VARCHAR(90)	NOT NULL, 
part		VARCHAR(30)	NOT NULL,
quantity	INTEGER		NOT NULL,
	CONSTRAINT WAREHOUSE_PKEY PRIMARY KEY(name, address, part) );
	
INSERT INTO WAREHOUSE VALUES ( 'Golden Bolts', 'Northfields Ave', 'bolt', 210 );
INSERT INTO WAREHOUSE VALUES ( 'Golden Bolts', 'Northfileds Ave', 'screw', 211);
INSERT INTO WAREHOUSE VALUES ( 'Golden Bolts', 'Northfields Ave', 'lock', 20);

COMMIT;

SELECT * FROM WAREHOUSE;

