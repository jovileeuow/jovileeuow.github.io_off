DROP TABLE SHIPMENT;

CREATE TABLE SHIPMENT(
sname	VARCHAR(30)	NOT NULL,
product	VARCHAR(30)	NOT NULL,
part	VARCHAR(30)	NOT NULL,
	CONSTRAINT SHIPMENT_PKEY PRIMARY KEY(sname, product, part) );
	
INSERT INTO SHIPMENT VALUES ('James', 'computer', 'processor');
INSERT INTO SHIPMENT VALUES ('James', 'computer', 'mainboard');
INSERT INTO SHIPMENT VALUES ('James', 'computer', 'hard disk');
INSERT INTO SHIPMENT VALUES ('James', 'audio system', 'amplifier');
INSERT INTO SHIPMENT VALUES ('James', 'audio system', 'speakers');

COMMIT;

SELECT * FROM SHIPMENT;

DROP TABLE SHIPMENT;
