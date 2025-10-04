create table Musteri(
	"id" INT PRIMARY key,
	ad VARCHAR(55) NOT null,
	soyad VARCHAR(55) NOT NULL,
	email VARCHAR(55) NOT NULL,
	sehir VARCHAR(55) NOT NULL,
	kayit_tarihi  DATE
);

INSERT INTO Musteri (id,ad, soyad, email, sehir, kayit_tarihi) VALUES
(1,'Ahmet', 'Y�lmaz', 'ahmet.yilmaz@email.com', '�stanbul', '2023-01-15'),
(2,'Ay�e', 'Demir', 'ayse.demir@email.com', 'Ankara', '2023-02-20'),
(3,'Mehmet', 'Kaya', 'mehmet.kaya@email.com', '�zmir', '2023-03-10'),
(4,'Fatma', '�elik', 'fatma.celik@email.com', 'Bursa', '2023-04-05'),
(5,'Mustafa', '�ahin', 'mustafa.sahin@email.com', 'Adana', '2023-05-12'),
(6,'Zeynep', 'Y�ld�z', 'zeynep.yildiz@email.com', 'Antalya', '2023-06-18'),
(7,'Ali', '�zt�rk', 'ali.ozturk@email.com', 'Konya', '2023-07-22'),
(8,'Emine', 'Ko�', 'emine.koc@email.com', 'Mersin', '2023-08-30'),
(9,'Hasan', 'Arslan', 'hasan.arslan@email.com', 'Eski�ehir', '2023-09-14'),
(10,'H�lya', 'Ayd�n', 'hulya.aydin@email.com', 'Samsun', '2023-10-25'),
(11,'�brahim', 'Do�an', 'ibrahim.dogan@email.com', 'Trabzon', '2023-11-11'),
(12,'Elif', 'Ersoy', 'elif.ersoy@email.com', 'Kayseri', '2023-12-03'),
(13,'Murat', 'G�ne�', 'murat.gunes@email.com', 'Gaziantep', '2024-01-09'),
(14,'Seda', 'Kara', 'seda.kara@email.com', 'Diyarbak�r', '2024-02-17'),
(15,'�mer', 'Ta�', 'omer.tas@email.com', 'Denizli', '2024-03-22'),
(16,'G�l', 'Polat', 'gul.polat@email.com', 'Erzurum', '2024-04-30'),
(17,'Cem', 'Acar', 'cem.acar@email.com', 'Sakarya', '2024-05-15'),
(18,'Asl�', 'Bulut', 'asli.bulut@email.com', 'Manisa', '2024-06-20'),
(19,'Eren', 'Turan', 'eren.turan@email.com', 'Bal�kesir', '2024-07-28'),
(20,'Derya', '�etin', 'derya.cetin@email.com', 'Ayd�n', '2024-08-10');


create table Kategori(
	"id" INT PRIMARY KEY,
	ad VARCHAR(22) NOT null
);


INSERT INTO Kategori (id,ad) VALUES
(1,'Teknoloji'),
(2,'Moda'),
(3,'Ev Dekorasyonu'),
(4,'Saat'),
(5,'Parf�m'),
(6,'Fitness Ekipmanlar�'),
(7,'Edebiyat'),
(8,'�ocuk Oyunlar�'),
(9,'Organik �r�nler'),
(10,'Bah�e Malzemeleri'),
(11,'Oto Aksesuarlar�'),
(12,'Medikal �r�nler'),
(13,'Tak�'),
(14,'Yaz�l�m'),
(15,'Ak�ll� Cihazlar'),
(16,'Mutfak Ekipmanlar�'),
(17,'Sanat Malzemeleri'),
(18,'Evcil Hayvan'),
(19,'K�rtasiye'),
(20,'Anne Bebek');

create table Satici(
	"id" INT PRIMARY KEY,
	ad VARCHAR (20) NOT NULL,
	adres VARCHAR(25) NOT NULL
);

INSERT INTO Satici (id,ad, adres) VALUES
(1,'Tekno Market', 'Ata�ehir Cd. No:12'),
(2,'Moda Butik', 'Ba�dat Cd. No:45'),
(3,'Evim G�zel', '�ankaya Mh. Sk. 3'),
(4,'Saat D�nyas�', '�stiklal Cd. No:7'),
(5,'Koku D�kkan�', 'Naber Psj. No:15'),
(6,'Spor Ma�azas�', 'E-5 Yolu Sk. 22'),
(7,'Kitap Evi', 'K�z�lay Mh. No:8'),
(8,'Oyun D�nyas�', 'Barbaros Cd. 19'),
(9,'G�da Pazar�', 'Fatih Cd. No:33'),
(10,'Bah�e D�kkan�', 'Kordonboyu Sk. 6'),
(11,'Oto Market', 'Sanayi Mh. No:11'),
(12,'Sa�l�k D�kkan�', 'H�rriyet Cd. 25'),
(13,'Tak� D�nyas�', 'Mimar Sinan Sk. 4'),
(14,'Yaz�l�m Ofisi', 'Levent Cd. No:9'),
(15,'Cihaz Ma�azas�', 'Taksim Mh. Sk. 12'),
(16,'Mutfak D�kkan�', 'Bornova Cd. No:18'),
(17,'Sanat At�lyesi', 'Alsancak Sk. No:5'),
(18,'Pet Shop', 'Kad�k�y Mh. No:14'),
(19,'K�rtasiye D�kkan�', 'Etiler Cd. No:20'),
(20,'Bebek Ma�azas�', 'Zeytinburnu Sk. 7');

create table Urun(
	"id" INT PRIMARY KEY,
	ad VARCHAR(30) NOT null,
	fiyat INTEGER,
	stok INTEGER,
	kategori_id INTEGER,
    satici_id INTEGER,
    FOREIGN KEY (kategori_id) REFERENCES Kategori(id),
    FOREIGN KEY (satici_id) REFERENCES Satici(id)
);

INSERT INTO Urun (id, ad, fiyat, stok, kategori_id, satici_id) VALUES
(1, 'Ak�ll� Telefon X', 12000, 50, 1, 1),
(2, 'Pamuklu Ti��rt', 150, 200, 2, 2),
(3, 'Cam Sehpa', 2500, 30, 3, 3),
(4, 'Kol Saati Klasik', 800, 100, 4, 4),
(5, 'Parf�m 50ml', 600, 80, 5, 5),
(6, 'Yoga Mat�', 200, 150, 6, 6),
(7, 'Roman Kitab�', 90, 300, 7, 7),
(8, 'E�itici Oyuncak', 120, 120, 8, 8),
(9, 'Organik Bal', 180, 60, 9, 9),
(10, 'Bah�e Makas�', 100, 90, 10, 10),
(11, 'Oto Koltuk K�l�f�', 400, 40, 11, 11),
(12, 'Vitamin Takviyesi', 250, 70, 12, 12),
(13, 'G�m�� Kolye', 300, 50, 13, 13),
(14, 'Antivir�s Yaz�l�m�', 200, 500, 14, 14),
(15, 'Ak�ll� Saat', 1500, 60, 15, 15),
(16, 'Tencere Seti', 900, 25, 16, 16),
(17, 'Resim F�r�as� Seti', 80, 100, 17, 17),
(18, 'Kedi Mamas�', 150, 200, 18, 18),
(19, 'Defter A4', 30, 400, 19, 19),
(20, 'Bebek Bezi', 200, 150, 20, 20);

CREATE TABLE Siparis (
    "id" INT PRIMARY KEY ,
    musteri_id INTEGER,
    tarih DATE,
    toplam_tutar INTEGER NOT NULL,
    odeme_turu VARCHAR(25) NOT NULL,
    FOREIGN KEY (musteri_id) REFERENCES Musteri(id)
);


INSERT INTO Siparis (id, musteri_id, tarih, toplam_tutar, odeme_turu) VALUES
(1, 1, '2023-02-10', 1500, 'Kredi Kart�'),
(2, 2, '2023-03-15', 750, 'Havale'),
(3, 3, '2023-04-20', 2200, 'Kredi Kart�'),
(4, 4, '2023-05-25', 300, 'Kap�da �deme'),
(5, 5, '2023-06-30', 1800, 'Kredi Kart�'),
(6, 6, '2023-08-05', 950, 'Havale'),
(7, 7, '2023-09-10', 1200, 'Kredi Kart�'),
(8, 8, '2023-10-15', 600, 'Kap�da �deme'),
(9, 9, '2023-11-20', 2700, 'Kredi Kart�'),
(1, 10, '2023-12-25', 400, 'Havale'),
(11, 11, '2024-01-30', 1600, 'Kredi Kart�'),
(12, 12, '2024-03-05', 850, 'Kap�da �deme'),
(3, 13, '2024-04-10', 2000, 'Kredi Kart�'),
(1, 14, '2024-05-15', 1100, 'Havale'),
(15, 15, '2024-06-20', 3000, 'Kredi Kart�'),
(16, 16, '2024-07-25', 650, 'Kap�da �deme'),
(17, 17, '2024-08-30', 1400, 'Kredi Kart�'),
(18, 18, '2024-09-05', 900, 'Havale'),
(9, 19, '2024-10-10', 2500, 'Kredi Kart�'),
(2, 20, '2024-11-15', 700, 'Kap�da �deme');


CREATE TABLE Siparis_Detay (
    "id" INT PRIMARY KEY ,
    siparis_id INTEGER,
    urun_id INTEGER,
    adet INTEGER NOT NULL,
    fiyat INTEGER NOT NULL,
    FOREIGN KEY (siparis_id) REFERENCES Siparis(id),
    FOREIGN KEY (urun_id) REFERENCES Urun(id)
);


INSERT INTO Siparis_Detay (id, siparis_id, urun_id, adet, fiyat) VALUES
(1, 1, 1, 1, 12000),
(2, 1, 15, 1, 1500),
(3, 2, 2, 3, 150),
(4, 2, 19, 5, 30),
(5, 3, 3, 1, 2500),
(6, 3, 16, 1, 900),
(7, 4, 4, 2, 800),
(8, 4, 13, 1, 300),
(9, 5, 5, 3, 600),
(10, 5, 12, 2, 250),
(11, 6, 6, 4, 200),
(12, 6, 18, 3, 150),
(13, 7, 7, 5, 90),
(14, 7, 19, 10, 30),
(15, 8, 8, 2, 120),
(16, 8, 17, 3, 80),
(17, 9, 9, 2, 180),
(18, 9, 10, 4, 100),
(19, 10, 11, 1, 400),
(20, 10, 20, 2, 200);

/* C B�L�M� */



SELECT TOP 5 m.id, m.ad, m.soyad,m.email, COUNT(s.id) AS siparis_sayisi
FROM Musteri m
INNER JOIN Siparis s ON m.id = s.musteri_id
GROUP BY m.id, m.ad, m.soyad,m.email
ORDER BY siparis_sayisi DESC;


select TOP 3 u.id,u.ad,COUNT(s.adet) as �r�n_say�s�
from Urun u
INNER JOIN siparis_detay s ON u.id=s.urun_id
Group by u.id,u.ad
Order by �r�n_say�s� DESC;

SELECT s.id, s.ad, s.adres,SUM(sd.fiyat) as toplam_ciro
FROM Satici s
INNER JOIN Urun u ON s.id = u.satici_id
INNER JOIN Siparis_Detay sd ON u.id = sd.urun_id
GROUP BY s.id,s.ad, s.adres
ORDER BY toplam_ciro DESC;

/*Aggregate & Group By:*/

select count(id) as musteri_say�s�,sehir
from musteri 
Group by sehir;

select k.ad,sum(sd.fiyat) as toplam_sat��
From Kategori K
INNER JOIN Urun u ON k.id=u.kategori_id
INNER JOIN Siparis_detay sd On u.id=sd.urun_id
Group By k.ad
Order by toplam_sat��;

SELECT FORMAT(tarih, 'yyyy-MM') AS ay, COUNT(id) AS siparis_sayisi
FROM Siparis
GROUP BY FORMAT(tarih, 'yyyy-MM')
ORDER BY ay;


/*JOIN�ler:
- Sipari�lerde m��teri bilgisi + �r�n bilgisi + sat�c� bilgisi.
- Hi� sat�lmam�� �r�nler.
- Hi� sipari� vermemi� m��teriler.
*/

SELECT m.id, m.ad, m.soyad, m.email, m.sehir, s.ad AS satici_ad, s.adres, u.ad AS urun_ad, u.fiyat, u.stok
FROM Satici s
INNER JOIN Urun u ON s.id = u.satici_id
INNER JOIN Siparis_Detay sd ON u.id = sd.urun_id
INNER JOIN Siparis sp ON sd.siparis_id = sp.id
INNER JOIN Musteri m ON sp.musteri_id = m.id;

SELECT u.id, u.ad
FROM Urun u
LEFT JOIN Siparis_Detay sd ON u.id = sd.urun_id
WHERE sd.urun_id IS NULL;


SELECT m.id, m.ad, m.soyad
FROM Musteri m
LEFT JOIN Siparis s ON m.id = s.musteri_id
WHERE s.id IS NULL;








































































































