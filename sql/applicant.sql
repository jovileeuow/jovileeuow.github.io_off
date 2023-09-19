DROP TABLE APPLICANT;

CREATE TABLE APPLICANT(			  /* Applicants			*/
anum        INTEGER     NOT NULL, /* Applicant number   */
fname       VARCHAR(20) NOT NULL, /* First name         */
lname		VARCHAR(30)	NOT NULL, /* Last name			*/
dob         DATE     	NOT NULL, /* Date of birth		*/
city		VARCHAR(30)	NOT NULL, /* City			    */
state		VARCHAR(20)	NOT NULL, /* State			    */
phone		INTEGER  	NOT NULL, /* Phone number		*/
fax		    INTEGER  		    , /* Fax number			*/
email		VARCHAR(50)		    , /* E-mail address		*/
	CONSTRAINT APPLICANT_pkey PRIMARY KEY ( anum ) );

INSERT INTO APPLICANT VALUES ( 000001, 'Harry', 'Potter', '1980-12-12', 'Perth', 'Western Australia', 645278453, NULL, 'jones@gmail.com' );
INSERT INTO APPLICANT VALUES ( 000002, 'Johnny', 'Walker', '1990-01-13', 'Geelong', 'Victoria', 63569784, 63569785, 'blunder@hotmail.com' );
INSERT INTO APPLICANT VALUES ( 000003, 'Mary', 'Poppins', '1950-01-01', 'Melbourne', 'Victoria', 62389541, NULL, NULL );
INSERT INTO APPLICANT VALUES ( 000004, 'Michael', 'Collins', '1960-05-25', 'Brisbane', 'Queensland', 63336666, NULL, 'mike@hotmail.com');
INSERT INTO APPLICANT VALUES ( 000005, 'Margaret', 'Finch', '1953-12-07', 'Sydney','New South Wales', 64573489, NULL, 'mf@163.com');
INSERT INTO APPLICANT VALUES ( 000006, 'Claudia', 'Kowalewski', '1959-05-03', 'Hobart', 'Tasmania', 64577744, NULL, 'cch@cs.odmg.org');
INSERT INTO APPLICANT VALUES ( 000007, 'James', 'Bond', '1960-01-01','Perth', 'Western Australia', 645278434, NULL, 'james@bigpond.com');
INSERT INTO APPLICANT VALUES ( 000008, 'Stephen', 'Staunton', '1977-10-23', 'Freemantle', 'Western Australia', 6278453, NULL, 'stephen@gmail.com');
INSERT INTO APPLICANT VALUES ( 000009, 'Joseph', 'Staunton', '1977-10-23', 'Newcastle', 'New South Wales', 623778453, NULL, 'joseph@gmail.com' );
INSERT INTO APPLICANT VALUES ( 0000010, 'John', 'Spiderman', '1990-06-21', 'Sydney', 'New South Wales', 24256789, 12345679, 'spider@yahoo.com');
INSERT INTO APPLICANT VALUES ( 0000011, 'George', 'TheFirst', '1991-10-12', 'Melbourne', 'Victoria', 2345987, NULL, 'g1st@hotmail.com');
INSERT INTO APPLICANT VALUES ( 0000012, 'Homer', 'Simpson', '1957-05-24', 'Adelaide', 'South Australia', 61369876, NULL, 'homer@gmail.com');
INSERT INTO APPLICANT VALUES ( 0000013, 'Neil', 'Superman', '1960-07-20', 'Perth', 'Western Australia', 45672345, 61343568, 'superneil@gmail.com');
INSERT INTO APPLICANT VALUES ( 0000014, 'Ivan', 'TheTerrible', '1969-05-11', 'Brisbane', 'Queensland', 1234567898, NULL, 'ivan@yahoo.com');
INSERT INTO APPLICANT VALUES ( 0000015, 'Penelope', 'Princess', '1977-10-23', 'Hobart', 'Tasmania', 40076711, NULL, 'pprincess@163.com');
INSERT INTO APPLICANT VALUES ( 0000016, 'Zhi Chao', 'Zhong', '1971-07-21', 'Horsley', 'New South Wales', 86150189, NULL, 'suezhong@163.com');
INSERT INTO APPLICANT VALUES ( 0000017, 'Richard', 'TheLionheart', '1981-06-02', 'Waga Waga', 'New South Wales', 61234567, NULL, 'rlion@hotmail.com');
INSERT INTO APPLICANT VALUES ( 0000018, 'Sherlock', 'Holmes', '1935-06-13', 'Bundaberg', 'Queensland', 46676601, NULL, 'holmes@162.com');
INSERT INTO APPLICANT VALUES ( 0000019, 'Robin', 'Hood', '1951-08-21', 'Horsley', 'New South Wales', 86150329, NULL, 'robinhood@163.com');
INSERT INTO APPLICANT VALUES ( 0000020, 'Janusz', 'Getta', '1953-10-03', 'Horsley', 'New South Wales', 12345678, 12345679, 'jrg@uow.edu.au');

SELECT 	anum,
       	fname, 
       	lname, 
       	dob, 
       	city,
		state,
		phone,
		fax,
		email
FROM APPLICANT
ORDER BY anum ASC;
