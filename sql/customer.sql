DROP TABLE CUSTOMER;

CREATE TABLE CUSTOMER(			  /* Customers   		*/
cnumber     INTEGER     NOT NULL, /* Customer number    */
fname       VARCHAR(20) NOT NULL, /* First name         */
lname		VARCHAR(30)	NOT NULL, /* Last name			*/
onumber     INTEGER	    NOT NULL, /* Order number       */
odate       DATE     	NOT NULL, /* Order date      	*/
lnumber     INTEGER     NOT NULL, /* Line number        */
item		VARCHAR(30)	NOT NULL, /* City			    */
price		DECIMAL(6,2)NOT NULL, /* Price per item     */
total		INTEGER  	NOT NULL, /* Total number of items */
	CONSTRAINT CUSTOMER_pkey PRIMARY KEY ( cnumber, onumber, lnumber ) );


	INSERT INTO CUSTOMER VALUES( 007, 'James', 'Bond', 7, '2016-01-01', 1, 'bolt', 23.04, 5);
	INSERT INTO CUSTOMER VALUES( 007, 'James', 'Bond', 7, '2016-01-01', 2, 'screw', 29.01, 3);
	INSERT INTO CUSTOMER VALUES( 007, 'James', 'Bond', 7, '2016-01-01', 3, 'nut', 4.55, 2);
	INSERT INTO CUSTOMER VALUES( 007, 'James', 'Bond', 8, '2016-01-01', 1, 'bolt', 23.04, 1);
	INSERT INTO CUSTOMER VALUES( 007, 'James', 'Bond', 8, '2016-01-01', 2, 'screw', 23.04, 1);
	INSERT INTO CUSTOMER VALUES( 007, 'James', 'Bond', 8, '2016-01-01', 3, 'nut', 23.04, 2);
	INSERT INTO CUSTOMER VALUES( 007, 'James', 'Bond', 8, '2016-01-01', 4, 'lock', 23.04, 1);

SELECT 	* 
FROM CUSTOMER
ORDER BY cnumber, onumber, lnumber ASC;

DROP TABLE CUSTOMER;

CREATE TABLE CUSTOMER(			  /* Customers   		*/
cnumber     INTEGER     NOT NULL, /* Customer number    */
fname       VARCHAR(20) NOT NULL, /* First name         */
lname		VARCHAR(30)	NOT NULL, /* Last name			*/
	CONSTRAINT CUSTOMER_PKEY PRIMARY KEY(cnumber) );
	
CREATE TABLE ORDERS(
onumber     INTEGER	    NOT NULL, /* Order number       */
odate       DATE     	NOT NULL, /* Order date      	*/
cnumber     INTEGER     NOT NULL, /* Customer number    */
	CONSTRAINT ORDERS_PKEY PRIMARY KEY(onumber),
	CONSTRAINT ORDERS_FKEY FOREIGN KEY(cnumber) REFERENCES CUSTOMER(cnumber) );
	
CREATE TABLE LINE(
onumber     INTEGER	    NOT NULL, /* Order number       */
lnumber     INTEGER     NOT NULL, /* Line number        */
item		VARCHAR(30)	NOT NULL, /* City			    */
price		DECIMAL(6,2)NOT NULL, /* Price per item     */
total		INTEGER  	NOT NULL, /* Total number of items */
	CONSTRAINT LINE_PKEY PRIMARY KEY (onumber, lnumber),
	CONSTRAINT ORDERS_PKEY FOREIGN KEY (onumber) REFERENCES ORDERS(onumber) );
	
INSERT INTO CUSTOMER VALUES( 007, 'James', 'Bond' );

INSERT INTO ORDERS VALUES( 7, '2016-01-01', 007 );
INSERT INTO ORDERS VALUES( 8, '2016-01-01', 007 );

INSERT INTO LINE VALUES( 7, 1, 'bolt', 23.04, 5);
INSERT INTO LINE VALUES( 7, 2, 'screw', 29.01, 3);
INSERT INTO LINE VALUES( 7, 3, 'nut', 4.55, 2);
INSERT INTO LINE VALUES( 8, 1, 'bolt', 23.04, 1);
INSERT INTO LINE VALUES( 8, 2, 'screw', 23.04, 1);
INSERT INTO LINE VALUES( 8, 3, 'nut', 23.04, 2);
INSERT INTO LINE VALUES( 8, 4, 'lock', 23.04, 1);

SELECT * FROM CUSTOMER;
SELECT * FROM ORDERS;
SELECT * FROM lINE;

DROP TABLE LINE;
DROP TABLE ORDERS;
DROP TABLE CUSTOMER;

	
