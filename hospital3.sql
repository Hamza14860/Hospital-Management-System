Drop table login;
Drop table progress;
Drop table previousexp; 

Drop table Bedd;

Drop table NonREG_Nurse;

Drop table DaySis;
Drop table NightSis;

Drop table Treatment;
Drop table Admissions;

Drop table careunit;
Drop table staffNurse;
Drop table Nurse;
Drop table Ward;
Drop table speciality;


Drop table complaint;
Drop table patient;
Drop table Non_consultant;
Drop table position;
Drop table Team;
Drop table Consultant;
Drop table Doctor;

create table speciality(
speciality_id char(6) NOT NULL,
speciality_name varchar(20) NOT NULL,
constraint pk_1 primary key(speciality_id)
);
Insert into speciality values('SP_001','CARDIOLOGY');
Insert into speciality values('SP_002','SURGERY');
Insert into speciality values('SP_003','ONCOLOGY');
Insert into speciality values('SP_004','NEUROLOGY');
Insert into speciality values('SP_005','DERMATOLOGY');
Insert into speciality values('SP_006','PATHOLOGY');
Insert into speciality values('SP_007','RADIOLOGY');
Insert into speciality values('SP_008','PSYCHIATRY');
Insert into speciality values('SP_009','CANCERSP');
Insert into speciality values('SP_010','GYNAECOLOGY');
Insert into speciality values('SP_011','PEDIACTRICS');


create table Ward(
ward_id char(6) NOT NULL,
ward_name varchar(50) NOT NULL,
ward_capacity int NOT NULL,
speciality_id char(6) NOT NULL,
constraint pk_2 primary key(ward_id),
constraint fk_spec foreign key(speciality_id) references speciality(speciality_id)
);
Insert into Ward values('WG_001','CARDIOLOGY WARD',50,'SP_001');
Insert into Ward values('WG_002','CHEMO WARD',50,'SP_009');
Insert into Ward values('WG_003','SURGERY WARD',100,'SP_002');
Insert into Ward values('WF_001','DERMATOLOGY WARD',50,'SP_005');
Insert into Ward values('WF_002','ONCOLOGY WARD',20,'SP_003');
Insert into Ward values('WS_001','NEUROLOGY WARD',10,'SP_004');
Insert into Ward values('WS_002','PEDIATRICS WARD',150,'SP_011');







create table Nurse(
Nurse_id char(6) NOT NULL primary key,
Name varchar(30) NOT NULL,
phone varchar(15) NOT NULL,
DOB date NOT NULL,
N_Gender varchar(6) NOT NULL check(N_Gender in('MALE','FEMALE','OTHER')),
ward_id char(6) NOT NULL,
constraint fk_wardd foreign key(ward_id) references Ward(ward_id)
);
Insert into Nurse values('NS0001','ZARA','09937264112',to_date('14-07-16','dd-mm-yy'),'FEMALE','WG_001');
Insert into Nurse values('NS0002','AGHNA UROOJ','03345214837',to_date('21-03-17','dd-mm-yy'),'FEMALE','WG_002');
Insert into Nurse values('NN0001','KHADIJA IFTHIKAR','03142222430',to_date('11-07-16','dd-mm-yy'),'FEMALE','WG_003');
Insert into Nurse values('NN0002','ZARA ALI','03335414847',to_date('07-05-18','dd-mm-yy'),'FEMALE','WF_001');
Insert into Nurse values('NS0003','DEBRA M','03365354210',to_date('24-04-18','dd-mm-yy'),'FEMALE','WS_001');
Insert into Nurse values('NN0003','ALI ANWAR','03365354212',to_date('21-01-12','dd-mm-yy'),'MALE','WF_002');
Insert into Nurse values('NN0004','AGHO KHAN','03365554440',to_date('25-05-15','dd-mm-yy'),'MALE','WG_002');
Insert into Nurse values('NN0005','ANNA IBRAHIM','03335354220',to_date('14-04-14','dd-mm-yy'),'FEMALE','WS_001');
Insert into Nurse values('NS0004','LOLA CERSIE','046256372221',to_date('12-07-88','dd-mm-yy'),'FEMALE','WF_001');

Insert into Nurse values('NSN013','URWA','09937264112',to_date('14-07-16','dd-mm-yy'),'FEMALE','WG_001');
Insert into Nurse values('NSN014','KUBRA','03345214837',to_date('21-03-17','dd-mm-yy'),'FEMALE','WG_002');
Insert into Nurse values('NSN015','ABEEHA','03365354210',to_date('24-04-18','dd-mm-yy'),'FEMALE','WS_001');
Insert into Nurse values('NSN016','ALIA','046256372221',to_date('12-07-88','dd-mm-yy'),'FEMALE','WF_001');

Insert into Nurse values('NSN024','SHABNAM','03345214837',to_date('21-03-17','dd-mm-yy'),'FEMALE','WG_003');
Insert into Nurse values('NSN025','SABA QAMAR','03365354210',to_date('24-04-18','dd-mm-yy'),'FEMALE','WS_002');
Insert into Nurse values('NSN026','MEHRU','046256372221',to_date('12-07-88','dd-mm-yy'),'FEMALE','WF_002');


Insert into Nurse values('NSD013','KALSOOM','09937264112',to_date('14-07-16','dd-mm-yy'),'FEMALE','WG_001');
Insert into Nurse values('NSD014','SALMA','03345214837',to_date('21-03-17','dd-mm-yy'),'FEMALE','WG_002');
Insert into Nurse values('NSD015','LAIBA','03365354210',to_date('24-04-18','dd-mm-yy'),'FEMALE','WS_001');
Insert into Nurse values('NSD016','AFAQ','046256372221',to_date('12-07-88','dd-mm-yy'),'FEMALE','WF_001');

Insert into Nurse values('NSD024','SARA','03345214837',to_date('21-03-17','dd-mm-yy'),'FEMALE','WG_003');
Insert into Nurse values('NSD025','SABA M','03365354210',to_date('24-04-18','dd-mm-yy'),'FEMALE','WS_002');
Insert into Nurse values('NSD026','MUNAZA','046256372221',to_date('12-07-88','dd-mm-yy'),'FEMALE','WF_002');



Insert into Nurse values('NS0005','SANA AMJAD','09937264112',to_date('14-07-16','dd-mm-yy'),'FEMALE','WG_001');
Insert into Nurse values('NS0006','FATIMA KHAN','03345214837',to_date('21-03-17','dd-mm-yy'),'FEMALE','WG_002');
Insert into Nurse values('NS0007','DONA S','03365354210',to_date('24-04-18','dd-mm-yy'),'FEMALE','WS_001');
Insert into Nurse values('NS0008','SCARLETT W','046256372221',to_date('12-07-88','dd-mm-yy'),'FEMALE','WF_001');


Insert into Nurse values('NS0009','TAMARA RED','09937264112',to_date('14-07-16','dd-mm-yy'),'FEMALE','WG_001');
Insert into Nurse values('NS0010','DANY D','03345214837',to_date('21-03-17','dd-mm-yy'),'FEMALE','WG_002');
Insert into Nurse values('NS0011','SANAM JUNG','03365354210',to_date('24-04-18','dd-mm-yy'),'FEMALE','WS_001');
Insert into Nurse values('NS0012','MISBAH KHAN','046256372221',to_date('12-07-88','dd-mm-yy'),'FEMALE','WF_001');


Insert into Nurse values('NS0013','ZARA','09937264112',to_date('14-07-16','dd-mm-yy'),'FEMALE','WG_001');
Insert into Nurse values('NS0014','AGHNA UROOJ','03345214837',to_date('21-03-17','dd-mm-yy'),'FEMALE','WG_002');
Insert into Nurse values('NS0015','DEBRA M','03365354210',to_date('24-04-18','dd-mm-yy'),'FEMALE','WS_001');
Insert into Nurse values('NS0016','LOLA CERSIE','046256372221',to_date('12-07-88','dd-mm-yy'),'FEMALE','WF_001');

Insert into Nurse values('NS0017','WARISHA','09931234112',to_date('14-07-16','dd-mm-yy'),'FEMALE','WS_002');
Insert into Nurse values('NS0018','SHAKEEBA','03345234837',to_date('21-03-17','dd-mm-yy'),'FEMALE','WS_002');
Insert into Nurse values('NS0019','SALWA','03365354146',to_date('24-04-18','dd-mm-yy'),'FEMALE','WF_002');
Insert into Nurse values('NS0020','SURAYA','03462145786',to_date('12-07-88','dd-mm-yy'),'FEMALE','WF_002');



create table StaffNurse(
Nurse_id char(6) NOT NULL primary key references Nurse(Nurse_id),
Name varchar(30) NOT NULL,
phone varchar(15) NOT NULL,
DOB date NOT NULL,
N_Gender varchar(6) NOT NULL check(N_Gender in('MALE','FEMALE','OTHER')),
Grade varchar(10) NOT NULL,
Salary int NOT NULL,
ward_id char(6) NOT NULL,
constraint fk_warrd foreign key(ward_id) references Ward(ward_id)
);



Insert into StaffNurse values('NS0001','ZARA','09937264112',to_date('14-07-16','dd-mm-yy'),'FEMALE','14',30000,'WG_001');
Insert into StaffNurse values('NS0002','AGHNA UROOJ','03345214837',to_date('21-03-17','dd-mm-yy'),'FEMALE','16',50000,'WG_002');
Insert into StaffNurse values('NS0003','DEBRA M','03365354210',to_date('24-04-18','dd-mm-yy'),'FEMALE','17',80000,'WS_001');
Insert into StaffNurse values('NS0004','LOLA CERSIE','03462565221',to_date('12-07-88','dd-mm-yy'),'FEMALE','13',25000,'WF_001');


Insert into StaffNurse values('NS0005','SANA AMJAD','09937264112',to_date('14-07-16','dd-mm-yy'),'FEMALE','14',30000,'WG_003');
Insert into StaffNurse values('NS0006','FATIMA KHAN','03345214837',to_date('21-03-17','dd-mm-yy'),'FEMALE','16',50000,'WG_002');
Insert into StaffNurse values('NS0007','DONA S','03365354210',to_date('24-04-18','dd-mm-yy'),'FEMALE','17',80000,'WS_001');
Insert into StaffNurse values('NS0008','SCARLETT W','03462562245',to_date('12-07-88','dd-mm-yy'),'FEMALE','13',25000,'WF_001');


Insert into StaffNurse values('NS0009','TAMARA RED','09937264112',to_date('14-07-16','dd-mm-yy'),'FEMALE','14',30000,'WG_001');
Insert into StaffNurse values('NS0010','DANY D','03345214837',to_date('21-03-17','dd-mm-yy'),'FEMALE','16',50000,'WG_002');
Insert into StaffNurse values('NS0011','SANAM JUNG','03365314720',to_date('24-04-18','dd-mm-yy'),'FEMALE','17',80000,'WG_003');
Insert into StaffNurse values('NS0012','MISBAH KHAN','03462563721',to_date('12-07-88','dd-mm-yy'),'FEMALE','13',25000,'WS_002');


Insert into StaffNurse values('NS0013','ZARA','09937264112',to_date('14-07-16','dd-mm-yy'),'FEMALE','14',30000,'WG_001');
Insert into StaffNurse values('NS0014','AGHNA UROOJ','03345214837',to_date('21-03-17','dd-mm-yy'),'FEMALE','16',50000,'WG_002');
Insert into StaffNurse values('NS0015','DEBRA M','03365354210',to_date('24-04-18','dd-mm-yy'),'FEMALE','17',80000,'WS_001');
Insert into StaffNurse values('NS0016','LOLA CERSIE','03462372221',to_date('12-07-88','dd-mm-yy'),'FEMALE','13',25000,'WF_001');


Insert into StaffNurse values('NS0017','WARISHA','09931234112',to_date('14-07-16','dd-mm-yy'),'FEMALE','14',30000,'WS_002');
Insert into StaffNurse values('NS0018','SHAKEEBA','03345234837',to_date('21-03-17','dd-mm-yy'),'FEMALE','16',50000,'WS_002');
Insert into StaffNurse values('NS0019','SALWA','03365354146',to_date('24-04-18','dd-mm-yy'),'FEMALE','17',80000,'WF_002');
Insert into StaffNurse values('NS0020','SURAYA','03462145786',to_date('12-07-88','dd-mm-yy'),'FEMALE','13',25000,'WF_002');




create table DaySis(
Nurse_id char(6) NOT NULL primary key references Nurse(Nurse_id),
Name varchar(30) NOT NULL,
phone varchar(15) NOT NULL,
DOB date NOT NULL,
N_Gender varchar(6) NOT NULL check(N_Gender in('MALE','FEMALE','OTHER')),
Work_Hrs int NOT NULL,
Salary int NOT NULL,
ward_id char(6) NOT NULL Unique,
constraint fk_warrdD foreign key(ward_id) references Ward(ward_id)
);

Insert into DaySis values('NSD013','KALSOOM','09937264112',to_date('14-07-16','dd-mm-yy'),'FEMALE',7,30000,'WG_001');
Insert into DaySis values('NSD014','SALMA','03345214837',to_date('21-03-17','dd-mm-yy'),'FEMALE',8,50000,'WG_002');
Insert into DaySis values('NSD015','LAIBA','03365354210',to_date('24-04-18','dd-mm-yy'),'FEMALE',9,80000,'WS_001');
Insert into DaySis values('NSD016','AFAQ','046256372221',to_date('12-07-88','dd-mm-yy'),'FEMALE',10,25000,'WF_001');

Insert into DaySis values('NSD024','SARA','03345214837',to_date('21-03-17','dd-mm-yy'),'FEMALE',8,50000,'WG_003');
Insert into DaySis values('NSD025','SABA M','03365354210',to_date('24-04-18','dd-mm-yy'),'FEMALE',7,80000,'WS_002');
Insert into DaySis values('NSD026','MUNAZA','046256372221',to_date('12-07-88','dd-mm-yy'),'FEMALE',10,25000,'WF_002');





create table NightSis(
Nurse_id char(6) NOT NULL primary key references Nurse(Nurse_id),
Name varchar(30) NOT NULL,
phone varchar(15) NOT NULL,
DOB date NOT NULL,
N_Gender varchar(6) NOT NULL check(N_Gender in('MALE','FEMALE','OTHER')),
Work_Hrs int NOT NULL,
Salary int NOT NULL,
ward_id char(6) NOT NULL Unique,
constraint fk_warrdN foreign key(ward_id) references Ward(ward_id)
);

Insert into NightSis values('NSN013','URWA','09937264112',to_date('14-07-16','dd-mm-yy'),'FEMALE',14,30000,'WG_001');
Insert into NightSis values('NSN014','KUBRA','03345214837',to_date('21-03-17','dd-mm-yy'),'FEMALE',9,50000,'WG_002');
Insert into NightSis values('NSN015','ABEEHA','03365354210',to_date('24-04-18','dd-mm-yy'),'FEMALE',12,80000,'WS_001');
Insert into NightSis values('NSN016','ALIA','046256372221',to_date('12-07-88','dd-mm-yy'),'FEMALE',10,25000,'WF_001');

Insert into NightSis values('NSN024','SHABNAM','03345214837',to_date('21-03-17','dd-mm-yy'),'FEMALE',8,50000,'WG_003');
Insert into NightSis values('NSN025','SABA QAMAR','03365354210',to_date('24-04-18','dd-mm-yy'),'FEMALE',10,80000,'WS_002');
Insert into NightSis values('NSN026','MEHRU','046256372221',to_date('12-07-88','dd-mm-yy'),'FEMALE',13,25000,'WF_002');





create table NonREG_Nurse(
CNIC char(13) NOT NULL primary key,
Name varchar(30) NOT NULL,
phone varchar(15) NOT NULL,
DOB date NOT NULL,
N_Gender varchar(6) NOT NULL check(N_Gender in('MALE','FEMALE','OTHER')),
Hourly_wage int NOT NULL,
ward_id char(6) NOT NULL,
constraint fk_waard foreign key(ward_id) references Ward(ward_id)
);
Insert into NonREG_Nurse values('1692458945321','KHADIJA IFTHIKAR','03142222430',to_date('11-07-16','dd-mm-yy'),'FEMALE',500,'WG_001');
Insert into NonREG_Nurse values('1692458947443','ZARA ALI','03335414847',to_date('07-05-18','dd-mm-yy'),'FEMALE',400,'WF_001');
Insert into NonREG_Nurse values('1692458947546','ALI ANWAR','03365354212',to_date('21-01-12','dd-mm-yy'),'MALE',300,'WF_002');
Insert into NonREG_Nurse values('1692458942014','AGHO KHAN','03365554440',to_date('25-05-15','dd-mm-yy'),'MALE',1000,'WG_002');
Insert into NonREG_Nurse values('1692458879621','ANNA IBRAHIM','03335354220',to_date('14-04-14','dd-mm-yy'),'FEMALE',200,'WS_001');


Insert into NonREG_Nurse values('2192458945378','SAIMA','03142222789',to_date('11-07-16','dd-mm-yy'),'FEMALE',500,'WG_003');
Insert into NonREG_Nurse values('3292458947443','AMNA','03005414847',to_date('05-02-18','dd-mm-yy'),'FEMALE',400,'WF_001');
Insert into NonREG_Nurse values('2692458947546','MOHSIN','03455354212',to_date('02-01-14','dd-mm-yy'),'MALE',300,'WF_002');
Insert into NonREG_Nurse values('1992458942014','MOEEZ','03125554440',to_date('25-05-15','dd-mm-yy'),'MALE',1000,'WS_002');
Insert into NonREG_Nurse values('2392458879621','AMNA IRUM','03215354220',to_date('14-04-14','dd-mm-yy'),'FEMALE',200,'WG_002');




create table careunit(
careunit_no char(6) NOT NULL,
careunit_name varchar(100) NOT NULL,
careunit_type varchar(100),
ward_id char(6) NOT NULL,
in_charge char(6) NOT NULL Unique,
constraint pk_crunt primary key(careunit_no),
constraint fk_ward foreign key(ward_id) references Ward(ward_id),
constraint fk_INC foreign key(in_charge) references StaffNurse(Nurse_id)
);

Insert into careunit values('CG_001','CARDIOLOGY UNIT 1','Neonatal Intensive care unit (NICU) ','WG_001','NS0013');
Insert into careunit values('CG_002','SURGERY UNIT 1','Post-Anaesthesia care unit (PACU) ','WG_003','NS0005');
Insert into careunit values('CG_003','CARDIOLOGY UNIT 2','Card Intensive care unit (CICU)','WG_001','NS0001');
Insert into careunit values('CG_004','DERMATOLOGY UNIT 1','DERMATOLOGY CARE UNIT','WF_001','NS0004');
Insert into careunit values('CG_005','ONCOLOGY UNIT 1','Ultra Care(UC)','WF_002','NS0020');
Insert into careunit values('CG_006','ONCOLOGY UNIT 2','Multidisciplinary ICU','WF_002','NS0018');
Insert into careunit values('CG_007','CARDIOLOGY UNIT 3','Coronary/Cardiac Care Unit','WG_001','NS0009');
Insert into careunit values('CG_008','SURGERY UNIT 2','Post-Surgery care unit (PSCU) ','WG_003','NS0011');

Insert into careunit values('CG_009','CHEMO UNIT 1','CHEMO CARE UNIT ','WG_002','NS0014');
Insert into careunit values('CG_010','NEUROLOGY UNIT 1','Post- Surgery care unit (PSCU) ','WS_001','NS0003');
Insert into careunit values('CG_012','NEUROLOGY UNIT 2','Post- Surgery care unit (PSCU) ','WS_001','NS0015');
Insert into careunit values('CG_013','DERMATOLOGY UNIT 1','DERMATOLOGY CARE UNIT','WF_001','NS0016');
Insert into careunit values('CG_014','PED UNIT 1','Pediatrics Intensive Care Unit (PICU) ','WS_002','NS0019');
Insert into careunit values('CG_015','CHEMO UNIT 2','CHEMO CARE UNIT ','WG_002','NS0010');

Insert into careunit values('CG_016','PED UNIT 2','Pediatrics Intensive Care Unit (PICU) ','WS_002','NS0012');
Insert into careunit values('CG_017','CHEMO UNIT 3','CHEMO CARE UNIT','WG_002','NS0006');


create table Doctor(
staff_no char(6) NOT NULL primary key,
Name varchar(50) NOT NULL,
DOB date,
phone_no varchar(15) NOT NULL,
D_Gender varchar(6) NOT NULL check(D_Gender in('MALE','FEMALE','OTHER')),
Salary int
);
Insert into Doctor values('SIC001','MANSOOR AHMED',to_date('05-01-78','dd-mm-yy'),'09237260112','MALE',150000);
Insert into Doctor values('SIC002','FAHAD DAR',to_date('15-10-88','dd-mm-yy'),'02317568112','MALE',300000);
Insert into Doctor values('SIC003','MEESHA SHAFI',to_date('20-10-89','dd-mm-yy'),'03007568346','FEMALE',175000);
Insert into Doctor values('SIC004','FARAH NASIR',to_date('11-11-87','dd-mm-yy'),'03235148903','FEMALE',175000);
Insert into Doctor values('SIN002','AHMED RAZA',to_date('23-09-89','dd-mm-yy'),'03227780172','MALE',150000);
Insert into Doctor values('SIN003','AISHA WAQAR',to_date('12-01-79','dd-mm-yy'),'03485149253','FEMALE',300000);
Insert into Doctor values('SNC001','JOHN WICK',to_date('28-05-72','dd-mm-yy'),'03485149253','MALE',200000);
Insert into Doctor values('SNC002','WILLIAM BELL',to_date('28-05-76','dd-mm-yy'),'05685149253','MALE',250000);
Insert into Doctor values('SNC003','AHMED SHAHZAD',to_date('01-01-64','dd-mm-yy'),'03436412467','MALE',175000);
Insert into Doctor values('SNN001','ALI ZAFAR',to_date('02-06-85','dd-mm-yy'),'05326853178','MALE',150000);
Insert into Doctor values('SNN002','GLORIA BORGER',to_date('23-11-67','dd-mm-yy'),'03129126318','FEMALE',500000);
Insert into Doctor values('SNN003','MISA HOARES',to_date('15-01-91','dd-mm-yy'),'02349157919','FEMALE',400000);


Insert into Doctor values('SNN004','HASSAN RAZA',to_date('23-09-89','dd-mm-yy'),'03227711122','MALE',150000);
Insert into Doctor values('SIN004','AMNA WAQAR',to_date('12-01-79','dd-mm-yy'),'03485100000','FEMALE',300000);
Insert into Doctor values('SNN005','DANYAL HAIDER',to_date('02-06-85','dd-mm-yy'),'05326857849','MALE',150000);
Insert into Doctor values('SIN005','SHAHEEN AKHTAR',to_date('23-11-67','dd-mm-yy'),'03129123475','FEMALE',500000);
Insert into Doctor values('SNN006','ABIDA G',to_date('15-01-91','dd-mm-yy'),'02349154798','FEMALE',400000);



create table patient(
patient_id char(6) NOT NULL primary key,
patient_name varchar(30) NOT NULL,
phone varchar(15) NOT NULL,
DOB date NOT NULL,
Gender varchar(6) NOT NULL check(Gender in('MALE','FEMALE','OTHER')),
BloodGroup varchar(3) NOT NULL check(BloodGroup in('AB+','AB-','A+','A-','B+','B-','O+','O-')),
Address varchar(50),
in_charge char(6) NOT NULL,
constraint fk_incharge foreign key(in_charge) references Doctor(staff_no)
);
Insert into patient values('PI0001','SAQIB IJAZ','09007860112',to_date('14-07-16','dd-mm-yy'),'MALE','B+','House 22,Street 6, G11, Islamabad','SIN002');
Insert into patient values('PR0002','MARIUM ANWAR','03458462127',to_date('12-06-98','dd-mm-yy'),'FEMALE','B-','House 2,Street 11, Askari 11, Rawalpindi','SIC004');
Insert into patient values('PI0004','ALI NOOR','034558263452',to_date('14-07-18','dd-mm-yy'),'MALE','AB+','Flat D1/2,i8/2, Islamabad','SIN003');
Insert into patient values('PK0005','ALI HAMZA','03424365257',to_date('07-02-88','dd-mm-yy'),'MALE','AB-','House 57,Street 43, Karsas, Karachi','SIC001');
Insert into patient values('PL0006','ZAINAB ALI','09007860112',to_date('25-11-77','dd-mm-yy'),'FEMALE','B+','House 22,Street 6, Gulberg, Lahore','SIN002');

Insert into patient values('PF0007','ADAM','03126140191',to_date('12-06-97','dd-mm-yy'),'MALE','A+','House No 4,Street NO 10,Karimabad,Faisalabad','SIC001');
Insert into patient values('PK0002','ALI ANWAR','03366140191',to_date('13-07-88','dd-mm-yy'),'MALE','B+','House No 7,S No 11,I-10/4,Islamabad','SIC004');
Insert into patient values('PL0001','MUNEEBA ALI','03346140441',to_date('07-11-85','dd-mm-yy'),'FEMALE','B-','House No 11,Street No 10,I-10/4,Islamabad','SIN002');
Insert into patient values('PI0002','AYESHA KHURAM','03216140441',to_date('01-01-97','dd-mm-yy'),'FEMALE','O+','House No 17,Street No 17,H-10/3,Islamabad','SIC003');
Insert into patient values('PI0003','HAMZA Butt','03335214873',to_date('02-02-12','dd-mm-yy'),'MALE','O-','House No 1,Street No 1,G-10/4,Islamabad','SIC002');

Insert into patient values('PM0001','M AZAM','03164780323',to_date('17-01-06','dd-mm-yy'),'MALE','B+','FLAT B2 Aryan,Multan','SIC003');
Insert into patient values('PM0002','NOOR UL AMIN','03005135873',to_date('12-12-05','dd-mm-yy'),'MALE','A-','House No 99,Lane No 1,Wazirabad,Multan','SIC004');




create table Admissions(
Admission_no char(6) NOT NULL primary key,
ward_id char(6) NOT NULL,
careunit_no char(6) NOT NULL,
patient_id char(6) NOT NULL,
date_admitted date NOT NULL,
constraint fk_crn foreign key(careunit_no) references careunit(careunit_no),
constraint fk_wrrd foreign key(ward_id) references ward(ward_id),
constraint fk_ptnt foreign key(patient_id) references patient(patient_id)
);
Insert into Admissions values('000001','WG_003','CG_002','PI0001',to_date('24-04-18','dd-mm-yy'));
Insert into Admissions values('000002','WG_003','CG_008','PK0005',to_date('22-04-18','dd-mm-yy'));
Insert into Admissions values('000003','WG_001','CG_003','PK0002',to_date('04-08-18','dd-mm-yy'));
Insert into Admissions values('000004','WF_002','CG_006','PI0002',to_date('27-07-18','dd-mm-yy'));
Insert into Admissions values('000005','WG_001','CG_007','PI0003',to_date('29-07-18','dd-mm-yy'));
Insert into Admissions values('000006','WG_003','CG_002','PI0004',to_date('24-04-18','dd-mm-yy'));

Insert into Admissions values('000007','WF_001','CG_004','PR0002',to_date('26-04-18','dd-mm-yy'));
Insert into Admissions values('000008','WF_002','CG_006','PL0001',to_date('08-09-18','dd-mm-yy'));
Insert into Admissions values('000009','WS_001','CG_010','PL0006',to_date('03-03-18','dd-mm-yy'));
Insert into Admissions values('000010','WG_001','CG_001','PF0007',to_date('11-08-18','dd-mm-yy'));

Insert into Admissions values('000011','WG_002','CG_009','PL0001',to_date('08-10-18','dd-mm-yy'));
Insert into Admissions values('000012','WG_002','CG_015','PL0001',to_date('08-11-18','dd-mm-yy'));
Insert into Admissions values('000013','WG_002','CG_017','PL0001',to_date('09-12-18','dd-mm-yy'));

Insert into Admissions values('000014','WS_001','CG_012','PI0001',to_date('03-05-18','dd-mm-yy'));
Insert into Admissions values('000015','WG_001','CG_001','PI0001',to_date('15-06-18','dd-mm-yy'));
Insert into Admissions values('000016','WF_002','CG_005','PK0005',to_date('23-04-18','dd-mm-yy'));

Insert into Admissions values('000017','WF_001','CG_013','PM0001',to_date('18-08-18','dd-mm-yy'));
Insert into Admissions values('000018','WG_003','CG_002','PM0002',to_date('22-09-18','dd-mm-yy'));

Insert into Admissions values('000019','WS_002','CG_014','PR0002',to_date('28-10-18','dd-mm-yy'));


create table Consultant(
staff_no char(6) primary key references Doctor(staff_no),
Name varchar(50) NOT NULL,
DOB date NOT NULL,
phone_no varchar(15) NOT NULL,
D_Gender varchar(6) NOT NULL check(D_Gender in('MALE','FEMALE','OTHER')),
Salary int,
speciality varchar(20) NOT NULL,
grade varchar(5) NOT NULL
);
Insert into Consultant values('SIC001','MANSOOR AHMED',to_date('05-01-78','dd-mm-yy'),'09237260112','MALE',150000,'DERMATOLOGIST','19');
Insert into Consultant values('SIC002','FAHAD DAR',to_date('15-10-88','dd-mm-yy'),'02317568112','MALE',300000,'PEDIATRICS','21');
Insert into Consultant values('SIC003','MEESHA SHAFI',to_date('20-10-89','dd-mm-yy'),'03007568346','FEMALE',175000,'CARDIOLOGY','18');
Insert into Consultant values('SNC001','JOHN WICK',to_date('28-05-72','dd-mm-yy'),'03485149253','MALE',200000,'ORTHAPAMOLOGY','21');
Insert into Consultant values('SIC004','FARAH NASIR',to_date('11-11-87','dd-mm-yy'),'03235148903','FEMALE',175000,'ENDOCRINOLOGY','20');
Insert into Consultant values('SNC003','AHMED SHAHZAD',to_date('01-01-64','dd-mm-yy'),'03436412467','MALE',175000,'HISTO-PATHOLOGY','20');
Insert into Consultant values('SNC002','WILLIAM BELL',to_date('28-05-76','dd-mm-yy'),'05685149253','MALE',250000,'PEDIATRICS','22');

create table Bedd(
Bed_id char(6) NOT NULL,
Bd_Type varchar(50),
careunit_no char(6) NOT NULL,
patient_id char(6) NOT NULL,
constraint pk_12 primary key(Bed_id),
constraint fk_careun foreign key(careunit_no) references careunit(careunit_no),
constraint fk_patient foreign key(patient_id) references patient(patient_id)
);
Insert into Bedd values('BS0001','Semi-Electric','CG_001','PI0001');
Insert into Bedd values('BS0002','Semi-Electric','CG_001','PK0002');
Insert into Bedd values('BS0003','Semi-Electric','CG_001','PI0003');

Insert into Bedd values('BF0001','Fully-Electric','CG_001','PF0007');
Insert into Bedd values('BF0002','Fully-Electric','CG_002','PI0004');
Insert into Bedd values('BF0003','Fully-Electric','CG_002','PL0001');
Insert into Bedd values('BF0004','Fully-Electric','CG_002','PL0006');

Insert into Bedd values('BM0001','MANUAL','CG_003','PK0005');
Insert into Bedd values('BM0002','MANUAL','CG_003','PR0002');



create table Team(
team_id char(6) NOT NULL primary key,
team_name varchar(30) NOT NULL,
staff_no char(6) NOT NULL UNIQUE,
constraint fk_consultant foreign key(staff_no) references consultant(staff_no) 
);
Insert into Team values('TD_001','ICU 1','SIC001');
Insert into Team values('TC_002','OP ORTHAMAPOLOGY 1','SNC001');
Insert into Team values('TP_002','OP PEDIATRICS 1','SNC002');
Insert into Team values('TD_002','ICU 2','SIC003');
Insert into Team values('TC_003','OP ORTHAMAPOLOGY 2','SIC002');
Insert into Team values('TP_003','OP PEDIATRICS 2','SIC004');
Insert into Team values('TN_001','OP PEDIATRICS 2','SNC003');



create table position(
position_id varchar(2) NOT NULL PRIMARY KEY,
position_name varchar(30) NOT NULL
);
Insert into position values('s','student');
Insert into position values('ar','assistant registrar');
Insert into position values('r','registrar');
Insert into position values('jh','junior houseman');
Insert into position values('sh','senior houseman');




create table Non_Consultant(
staff_no char(6) primary key references Doctor(staff_no),
Name varchar(50) NOT NULL,
DOB date NOT NULL,
phone_no varchar(15) NOT NULL,
D_Gender varchar(6) NOT NULL check(D_Gender in('MALE','FEMALE','OTHER')),
Salary int,
team_id char(6) NOT NULL,
position_id varchar(2) NOT NULL,
constraint fk_team foreign key(team_id) references Team(team_id),
constraint fk_pos foreign key(position_id) references position(position_id)
);
Insert into Non_Consultant values('SIN002','AHMED RAZA',to_date('23-09-89','dd-mm-yy'),'03227780172','MALE',150000,'TD_001','s');
Insert into Non_Consultant values('SIN003','AISHA WAQAR',to_date('12-01-79','dd-mm-yy'),'03485149253','FEMALE',300000,'TD_001','jh');
Insert into Non_Consultant values('SNN001','ALI ZAFAR',to_date('02-06-85','dd-mm-yy'),'05326853178','MALE',150000,'TC_002','ar');
Insert into Non_Consultant values('SNN002','GLORIA BORGER',to_date('23-11-67','dd-mm-yy'),'03129126318','FEMALE',500000,'TC_002','sh');
Insert into Non_Consultant values('SNN003','MISA HOARES',to_date('15-01-91','dd-mm-yy'),'02349157919','FEMALE',400000,'TP_002','r');


Insert into Non_Consultant values('SNN004','HASSAN RAZA',to_date('23-09-89','dd-mm-yy'),'03227711122','MALE',150000,'TD_002','ar');
Insert into Non_Consultant values('SIN004','AMNA WAQAR',to_date('12-01-79','dd-mm-yy'),'03485100000','FEMALE',300000,'TD_002','jh');
Insert into Non_Consultant values('SNN005','DANYAL HAIDER',to_date('02-06-85','dd-mm-yy'),'05326857849','MALE',150000,'TC_003','s');
Insert into Non_Consultant values('SIN005','SHAHEEN AKHTAR',to_date('23-11-67','dd-mm-yy'),'03129123475','FEMALE',500000,'TP_003','r');
Insert into Non_Consultant values('SNN006','ABIDA G',to_date('15-01-91','dd-mm-yy'),'02349154798','FEMALE',400000,'TN_001','sh');








create table complaint(
complaint_id char(6) NOT NULL,
cmp_desc varchar(100) NOT NULL,
cmp_date date NOT NULL,
patient_id char(6) NOT NULL,
primary key(complaint_id),
constraint fk_patnt foreign key(patient_id) references patient(patient_id)
);
Insert into complaint values('C00001','Knee Fracture',to_date('23-04-18','dd-mm-yy'),'PI0001');
Insert into complaint values('C00002','Pain in Stomach',to_date('22-04-18','dd-mm-yy'),'PK0005');
Insert into complaint values('C00003','Multiple injuries and bones broken',to_date('23-04-18','dd-mm-yy'),'PI0004');
Insert into complaint values('C00004','Chest Pain',to_date('15-06-18','dd-mm-yy'),'PI0001');
Insert into complaint values('C00005','Probable Food Poisioning',to_date('25-04-18','dd-mm-yy'),'PR0002');
Insert into complaint values('C00006','Brought Unconscious',to_date('27-07-18','dd-mm-yy'),'PL0006');

Insert into complaint values('C00007','High Fever',to_date('27-07-18','dd-mm-yy'),'PI0002');
Insert into complaint values('C00008','Stroke',to_date('29-07-18','dd-mm-yy'),'PI0003');
Insert into complaint values('C00009','Suffocation',to_date('03-08-18','dd-mm-yy'),'PK0002');
Insert into complaint values('C00010','Broken Hand',to_date('11-08-18','dd-mm-yy'),'PF0007');
Insert into complaint values('C00011','Scheduled Chemo',to_date('08-09-18','dd-mm-yy'),'PL0001');

Insert into complaint values('C00012','Dizzyness',to_date('17-08-18','dd-mm-yy'),'PM0001');
Insert into complaint values('C00013','Excessive Vomitting',to_date('22-09-18','dd-mm-yy'),'PM0002');

Insert into complaint values('C00014','Fits',to_date('27-10-18','dd-mm-yy'),'PR0002');


create table Treatment(
treatment_code char(6) NOT NULL,
complaint_id char(6) NOT NULL,
patient_id char(6) NOT NULL,
staff_no char(6) NOT NULL,
start_date date NOT NULL,
end_date date,
treatment_desc varchar(100),
Admission_no char(6) NOT NULL,
fee varchar(20) NOT NULL,
foreign key(complaint_id) references complaint(complaint_id),
foreign key(staff_no) references Doctor(staff_no),
foreign key(patient_id) references patient(patient_id),
foreign key(Admission_no) references Admissions(Admission_no),
primary key(treatment_code,complaint_id)
);
Insert into Treatment values('T00001','C00001','PI0001','SNN001',to_date('24-04-18','dd-mm-yy'),to_date('02-05-18','dd-mm-yy'),'(Admitted)Knee Surgery and bed rest','000001','9000');
Insert into Treatment values('T00002','C00001','PI0001','SNN002',to_date('03-05-18','dd-mm-yy'),to_date('04-05-18','dd-mm-yy'),'(Admitted)MRI CT Scan and prescription','000014','10000');
Insert into Treatment values('T00001','C00002','PK0005','SNC001',to_date('22-04-18','dd-mm-yy'),to_date('06-05-18','dd-mm-yy'),'(Admitted)MRI Scan ,Anesthesia','000002','15000');
Insert into Treatment values('T00001','C00004','PI0001','SNN003',to_date('15-06-18','dd-mm-yy'),to_date('25-06-18','dd-mm-yy'),'(Admitted) MRI Scan Electrocardiogram (ECG).','000015','9000');
Insert into Treatment values('T00002','C00002','PK0005','SNC001',to_date('23-04-18','dd-mm-yy'),to_date('12-05-18','dd-mm-yy'),'(Admitted)Apendix Surgery','000016','120000');
Insert into Treatment values('T00001','C00003','PI0004','SNN003',to_date('24-04-18','dd-mm-yy'),to_date('25-04-18','dd-mm-yy'),'(Admitted)Multiple Surgeries','000006','50000');
Insert into Treatment values('T00001','C00005','PR0002','SIN003',to_date('26-04-18','dd-mm-yy'),to_date('28-05-18','dd-mm-yy'),'(Admitted)Blood Test, Gluscose Drip and Prescriptions','000007','1500');
Insert into Treatment values('T00001','C00006','PL0006','SNN003',to_date('03-03-18','dd-mm-yy'),to_date('04-06-18','dd-mm-yy'),'(Admitted)Blood Test','000009','5000');
Insert into Treatment values('T00001','C00007','PI0002','SIN003',to_date('27-07-18','dd-mm-yy'),to_date('28-07-18','dd-mm-yy'),'(Admitted)Blood Test,Drip','000004','1500');
Insert into Treatment values('T00001','C00008','PI0003','SNC001',to_date('29-07-18','dd-mm-yy'),to_date('12-09-18','dd-mm-yy'),'(Admitted)Coronary catheterization (angiogram),Bed Rest','000005','150000');
Insert into Treatment values('T00001','C00009','PK0002','SIN003',to_date('04-08-18','dd-mm-yy'),to_date('19-08-18','dd-mm-yy'),'(Admitted)Blood Test,X-Ray,ECG','000003','11000');
Insert into Treatment values('T00001','C00010','PF0007','SNN002',to_date('11-08-18','dd-mm-yy'),to_date('16-08-18','dd-mm-yy'),'(Admitted)Surgery,Followup','000010','12500');
Insert into Treatment values('T00001','C00011','PL0001','SNN003',to_date('08-09-18','dd-mm-yy'),to_date('09-09-18','dd-mm-yy'),'(Admitted)BloodTest,MRI Scan,Chemotherapy','000008','15000');
Insert into Treatment values('T00002','C00011','PL0001','SNN003',to_date('08-10-18','dd-mm-yy'),to_date('09-10-18','dd-mm-yy'),'(Admitted)MRI Scan,Chemotherapy','000011','15000');
Insert into Treatment values('T00003','C00011','PL0001','SNN003',to_date('08-11-18','dd-mm-yy'),to_date('09-11-18','dd-mm-yy'),'(Admitted)BloodTest,MRI Scan,Chemotherapy','000012','15000');
Insert into Treatment values('T00004','C00011','PL0001','SNN003',to_date('09-12-18','dd-mm-yy'),to_date('10-12-18','dd-mm-yy'),'(Admitted)MRI Scan,Chemotherapy','000013','15000');

Insert into Treatment values('T00001','C00012','PM0001','SIC002',to_date('18-08-18','dd-mm-yy'),to_date('22-08-18','dd-mm-yy'),'(Admitted)Brain Tumor Autopsy','000017','15000');
Insert into Treatment values('T00001','C00013','PM0002','SIC003',to_date('22-09-18','dd-mm-yy'),to_date('10-10-18','dd-mm-yy'),'(Admitted)LymphNode Surgery,FNA','000018','13300');
Insert into Treatment values('T00001','C00014','PR0002','SIC004',to_date('28-10-18','dd-mm-yy'),to_date('02-11-18','dd-mm-yy'),'(Admitted)','000019','25000');



create table progress(
date_grade date NOT NULL,
staff_no char(6) NOT NULL,
performance char(1) NOT NULL,
primary key(staff_no,date_grade,performance),
foreign key(staff_no) references Doctor(staff_no)
);


Insert into progress values(to_date('14-10-17','dd-mm-yy'),'SIN002','B');


Insert into progress values(to_date('01-07-13','dd-mm-yy'),'SIN003','A');
Insert into progress values(to_date('01-01-14','dd-mm-yy'),'SIN003','B');

Insert into progress values(to_date('05-12-16','dd-mm-yy'),'SNN001','C');

Insert into progress values(to_date('01-12-10','dd-mm-yy'),'SNN002','B');
Insert into progress values(to_date('01-06-11','dd-mm-yy'),'SNN002','A');
Insert into progress values(to_date('01-12-11','dd-mm-yy'),'SNN002','D');

Insert into progress values(to_date('25-10-16','dd-mm-yy'),'SNN003','C');
Insert into progress values(to_date('25-04-17','dd-mm-yy'),'SNN003','C');


Insert into progress values(to_date('01-12-12','dd-mm-yy'),'SNN004','A');
Insert into progress values(to_date('01-06-13','dd-mm-yy'),'SNN004','B');

Insert into progress values(to_date('05-08-15','dd-mm-yy'),'SIN004','C');
Insert into progress values(to_date('05-02-16','dd-mm-yy'),'SIN004','D');

Insert into progress values(to_date('01-12-12','dd-mm-yy'),'SNN005','A');

Insert into progress values(to_date('01-01-11','dd-mm-yy'),'SIN005','D');
Insert into progress values(to_date('01-08-11','dd-mm-yy'),'SIN005','C');
Insert into progress values(to_date('01-01-12','dd-mm-yy'),'SIN005','F');
Insert into progress values(to_date('01-08-12','dd-mm-yy'),'SIN005','A');

Insert into progress values(to_date('25-06-11','dd-mm-yy'),'SNN006','D');
Insert into progress values(to_date('25-12-11','dd-mm-yy'),'SNN006','F');
Insert into progress values(to_date('25-06-12','dd-mm-yy'),'SNN006','B');
Insert into progress values(to_date('25-12-12','dd-mm-yy'),'SNN006','A');




create table previousexp(
staff_no char(6) NOT NULL,
fromdate date NOT NULL,
todate date NOT NULL,
position_id varchar(2) NOT NULL,
Establishment varchar(20) ,
primary key(staff_no,fromdate,todate),
constraint fk_staff1 foreign key(staff_no) references Doctor(staff_no),
constraint fk_pos1 foreign key(position_id) references position(position_id)
);

Insert into previousexp values('SIN002',to_date('14-04-17','dd-mm-yy'),to_date('14-10-17','dd-mm-yy'),'s','AQC');


Insert into previousexp values('SIN003',to_date('01-01-13','dd-mm-yy'),to_date('01-07-13','dd-mm-yy'),'s','PAH');
Insert into previousexp values('SIN003',to_date('01-07-13','dd-mm-yy'),to_date('01-01-14','dd-mm-yy'),'jh','-');


Insert into previousexp values('SNN001',to_date('05-06-16','dd-mm-yy'),to_date('05-12-16','dd-mm-yy'),'ar','PAF');

Insert into previousexp values('SNN002',to_date('01-06-10','dd-mm-yy'),to_date('01-12-10','dd-mm-yy'),'s','AMC');
Insert into previousexp values('SNN002',to_date('01-12-10','dd-mm-yy'),to_date('01-06-11','dd-mm-yy'),'jh','-');
Insert into previousexp values('SNN002',to_date('01-06-11','dd-mm-yy'),to_date('01-12-11','dd-mm-yy'),'sh','-');


Insert into previousexp values('SNN003',to_date('25-04-16','dd-mm-yy'),to_date('25-10-16','dd-mm-yy'),'ar','CMH');
Insert into previousexp values('SNN003',to_date('25-10-16','dd-mm-yy'),to_date('25-04-17','dd-mm-yy'),'r','-');

Insert into previousexp values('SNN004',to_date('01-06-12','dd-mm-yy'),to_date('01-12-12','dd-mm-yy'),'s','MH');
Insert into previousexp values('SNN004',to_date('01-12-12','dd-mm-yy'),to_date('01-06-13','dd-mm-yy'),'ar','-');

Insert into previousexp values('SIN004',to_date('05-02-15','dd-mm-yy'),to_date('05-08-15','dd-mm-yy'),'s','PIMS');
Insert into previousexp values('SIN004',to_date('05-08-15','dd-mm-yy'),to_date('05-02-16','dd-mm-yy'),'jh','-');

Insert into previousexp values('SNN005',to_date('01-06-12','dd-mm-yy'),to_date('01-12-12','dd-mm-yy'),'s','NBH');

Insert into previousexp values('SIN005',to_date('01-08-11','dd-mm-yy'),to_date('01-01-11','dd-mm-yy'),'s','IDC');
Insert into previousexp values('SIN005',to_date('01-01-11','dd-mm-yy'),to_date('01-08-11','dd-mm-yy'),'ar','-');
Insert into previousexp values('SIN005',to_date('01-08-11','dd-mm-yy'),to_date('01-01-12','dd-mm-yy'),'ar','-');
Insert into previousexp values('SIN005',to_date('01-01-12','dd-mm-yy'),to_date('01-08-12','dd-mm-yy'),'r','-');

Insert into previousexp values('SNN006',to_date('25-12-14','dd-mm-yy'),to_date('25-06-15','dd-mm-yy'),'s','SKMH');
Insert into previousexp values('SNN006',to_date('25-06-15','dd-mm-yy'),to_date('25-12-15','dd-mm-yy'),'s','-');
Insert into previousexp values('SNN006',to_date('25-12-15','dd-mm-yy'),to_date('25-06-16','dd-mm-yy'),'jh','-');
Insert into previousexp values('SNN006',to_date('25-06-16','dd-mm-yy'),to_date('25-12-16','dd-mm-yy'),'sh','-');




create table login(
email_id varchar(30) PRIMARY KEY NOT NULL,
password varchar(50) NOT NULL
);
Insert into login values('admin@gmail.com','1234');
Insert into login values('admin2@gmail.com','4321');

