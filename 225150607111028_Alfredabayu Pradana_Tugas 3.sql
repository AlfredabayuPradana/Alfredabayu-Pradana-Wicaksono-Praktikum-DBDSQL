create schema MAHASISWA

use MAHASISWA

create table FAKULTAS(
	ID_FAKULTAS smallint primary key not NULL,
	FAKULTAS VARCHAR(45)	
)

create table JURUSAN(
	ID_JURUSAN smallint primary key not null,
	ID_FAKULTAS smallint references FAKULTAS(ID_FAKULTAS),
	JURUSAN VARCHAR(45)
)

create table STRATA(
	ID_STRATA smallint primary key not null,
	SINGKAT VARCHAR(10),
	STRATA VARCHAR(45)
)

create table PROGRAM_STUDI(
	ID_PROGRAM_STUDI smallint primary key not null,
	ID_STRATA smallint references STRATA(ID_STRATA),
	ID_JURUSAN smallint references JURUSAN(ID_JURUSAN),
	PROGRAM_STUDI VARCHAR(60)
)

create table SELEKSI_MASUK(
	ID_SELEKSI_MASUK smallint primary key not null,
	SINGKAT VARCHAR(12),
	SELEKSI_MASUK VARCHAR(60)
)

create table MAHASISWA1(
	NIM VARCHAR(15)primary key not null,
	ID_SELEKSI_MASUK smallint references SELEKSI_MASUK (ID_SELEKSI_MASUK),
	ID_PROGRAM_STUDI smallint references PROGRAM_STUDI (ID_PROGRAM_STUDI),
	NAMA VARCHAR(60),
	ANGKATAN smallint,
	TGL_LAHIR DATE,
	KOTA_LAHIR VARCHAR(60),
	JENIS_KELAMIN CHAR(1)
)


select * from FAKULTAS
insert into FAKULTAS(ID_FAKULTAS,FAKULTAS)VALUES(1,'EKONOMI & BISNIS')
insert into FAKULTAS(ID_FAKULTAS,FAKULTAS)VALUES(2,'ILMU KOMPUTER')

select * from JURUSAN
insert into JURUSAN(ID_JURUSAN,ID_FAKULTAS,JURUSAN)VALUES('21','2','INFORMATIKA')
insert into JURUSAN(ID_JURUSAN,ID_FAKULTAS,JURUSAN)VALUES('22','2','SISTEM INFORMASI')
insert into JURUSAN(ID_JURUSAN,ID_FAKULTAS,JURUSAN)VALUES('23','2','TEKNIK KOMPUTER')

select * from STRATA 
insert into STRATA(ID_STRATA,SINGKAT,STRATA)VALUES(1,'D1','DIPLOMA')
insert into STRATA(ID_STRATA,SINGKAT,STRATA)VALUES(2,'S1','SARJANA')
insert into STRATA(ID_STRATA,SINGKAT,STRATA)VALUES(3,'S2','MAGISTER')

select * from PROGRAM_STUDI
insert into PROGRAM_STUDI(ID_PROGRAM_STUDI,ID_STRATA,ID_JURUSAN,PROGRAM_STUDI)VALUES(211,2,21,'TEKNIK INFORAMTIKA')
insert into PROGRAM_STUDI(ID_PROGRAM_STUDI,ID_STRATA,ID_JURUSAN,PROGRAM_STUDI)VALUES(212,2,21,'TEKNIK KOMPUTER')
insert into PROGRAM_STUDI(ID_PROGRAM_STUDI,ID_STRATA,ID_JURUSAN,PROGRAM_STUDI)VALUES(219,3,21,'MAGISTER ILMU KOMPUTER')

select * from SELEKSI_MASUK
insert into SELEKSI_MASUK(ID_SELEKSI_MASUK,SINGKAT,SELEKSI_MASUK)VALUES(1,'SNMPTN','SELEKSI NASIONAL MAHASISWA PERGURUAN TINGGI NEGERI')
insert into SELEKSI_MASUK(ID_SELEKSI_MASUK,SINGKAT,SELEKSI_MASUK)VALUES(2,'SBMPTN','SELEKSI BERSAMA MAHASISWA PERGURUAN TINGGI NEGERI')

select * from MAHASISWA1
insert into MAHASISWA1(NIM,ID_SELEKSI_MASUK,ID_PROGRAM_STUDI,NAMA,ANGKATAN,TGL_LAHIR,KOTA_LAHIR,JENIS_KELAMIN)VALUES(155150400,1,211,'JONI',2015,1/1/1997,'MALANG','W')
insert into MAHASISWA1(NIM,ID_SELEKSI_MASUK,ID_PROGRAM_STUDI,NAMA,ANGKATAN,TGL_LAHIR,KOTA_LAHIR,JENIS_KELAMIN)VALUES(155150401,2,212,'JONO',2015,2/10/1997,'SITUBONDO','P')