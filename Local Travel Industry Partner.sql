CREATE TABLE KONSUMEN (
ID_KONSUMEN INT NOT NULL,
NAMA_KONSUMEN VARCHAR(20),
ALAMAT VARCHAR(50),
CONSTRAINT KONSUMEN_PK PRIMARY KEY (ID_KONSUMEN) ENABLE
);

CREATE TABLE ADMIN(
ID_ADMIN INT NOT NULL,
NO_HP INT,
NAMA_ADMIN VARCHAR(20),
CONSTRAINT ADMIN_PK PRIMARY KEY (ID_ADMIN) ENABLE
);

CREATE TABLE PAKET(
ID_PAKET INT NOT NULL,
NAMA_PAKET VARCHAR(20),
KODE_PAKET VARCHAR(5),
HARGA INTEGER,
CONSTRAINT PAKET_PK PRIMARY KEY (ID_PAKET) ENABLE
);

CREATE TABLE FOUNDER(
ID_FOUNDER INT NOT NULL,
NAMA_FOUNDER VARCHAR(20),
CONSTRAINT FOUNDER_PK PRIMARY KEY (ID_FOUNDER) ENABLE
);

CREATE TABLE BOOKING(
ID_BOOKING INT NOT NULL,
ID_KONSUMEN INT NOT NULL,
ID_PAKET INT NOT NULL,
NAMA_BOOKING VARCHAR(20),
CONSTRAINT BOOKING PRIMARY KEY (ID_BOOKING) ENABLE,
CONSTRAINT BOOKING_FK FOREIGN KEY (ID_KONSUMEN) REFERENCES KONSUMEN (ID_KONSUMEN) ON DELETE CASCADE,
CONSTRAINT BOOKING1_FK FOREIGN KEY (ID_PAKET) REFERENCES PAKET (ID_PAKET) ON DELETE CASCADE
);

CREATE TABLE TRANSAKSI(
ID_TRANSAKSI INT NOT NULL,
ID_PAKET INT NOT NULL,
NAMA_KONSUMEN VARCHAR(20),
TANGGAL_TRANSAKSI DATE,
CONSTRAINT TRANSAKSI PRIMARY KEY (ID_TRANSAKSI) ENABLE,
CONSTRAINT TRANSAKSI_FK FOREIGN KEY (ID_PAKET) REFERENCES PAKET (ID_PAKET) ON DELETE CASCADE
);

INSERT INTO konsumen (id_konsumen,nama_konsumen,alamat) values(001,'aldy','jalan sukabirus');

INSERT INTO konsumen (id_konsumen,nama_konsumen,alamat) values(002,'adam','jalan sukapura');
INSERT INTO konsumen (id_konsumen,nama_konsumen,alamat) values(003,'rifky','jalan sukaduka');
INSERT INTO konsumen (id_konsumen,nama_konsumen,alamat) values(004,'wanmudo','jalan sukamakan');

INSERT INTO admin (id_admin,no_hp,nama_admin) values(101,'0812342124523','admin1');
INSERT INTO admin (id_admin,no_hp,nama_admin) values(102,'0824455213545','admin2');

INSERT INTO founder (id_founder,nama_founder) values(01,'founderacong');

INSERT INTO paket (id_paket,nama_paket,kode_paket,harga) values(201,'paket 1','11','50000');
INSERT INTO paket (id_paket,nama_paket,kode_paket,harga) values(202,'paket 2','12',100000);

INSERT INTO booking (id_booking,id_konsumen,id_paket,nama_booking) values(301,001,201,'paket 1');

INSERT INTO transaksi (id_transaksi,id_paket,nama_konsumen,tanggal_transaksi) values(401,201,'aldy','02-SEP-2019');

select * from admin;
select * from booking;
select * from founder;
select * from konsumen;
select * from paket;
select * from transaksi;
