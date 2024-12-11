
-- Tabel Pelanggan
CREATE TABLE Pelanggan (
    PelangganID INT PRIMARY KEY IDENTITY(1,1),
    Nama VARCHAR(100) NOT NULL,
    Alamat VARCHAR(150) NOT NULL,
    Telepon VARCHAR(15) NOT NULL,
    Email VARCHAR(100)
);

-- Tabel Hewan
CREATE TABLE Hewan (
    HewanID INT PRIMARY KEY IDENTITY(1,1),
    PelangganID INT,
    NamaHewan VARCHAR(100) NOT NULL,
    Jenis VARCHAR(50) NOT NULL,
    Umur INT,
    Keterangan VARCHAR(200),
    FOREIGN KEY (PelangganID) REFERENCES Pelanggan(PelangganID)
);

-- Tabel Layanan
CREATE TABLE Layanan (
    LayananID INT IDENTITY(1,1) PRIMARY KEY,
    NamaLayanan VARCHAR(100) NOT NULL,
    Deskripsi VARCHAR(200),
    Harga DECIMAL(10, 2) NOT NULL
);

-- Tabel Reservasi
CREATE TABLE Reservasi (
    ReservasiID INT IDENTITY(1,1) PRIMARY KEY,
    PelangganID INT,
    HewanID INT,
    LayananID INT,
    TanggalReservasi DATE NOT NULL,
    DurasiHari INT NOT NULL,
    FOREIGN KEY (PelangganID) REFERENCES Pelanggan(PelangganID),
    FOREIGN KEY (HewanID) REFERENCES Hewan(HewanID),
    FOREIGN KEY (LayananID) REFERENCES Layanan(LayananID)
);

-- Tabel Pembayaran
CREATE TABLE Pembayaran (
    PembayaranID INT IDENTITY(1,1) PRIMARY KEY,
    ReservasiID INT,
    TanggalPembayaran DATE NOT NULL,
    Jumlah DECIMAL(10, 2) NOT NULL,
    MetodePembayaran VARCHAR(50) NOT NULL,
    FOREIGN KEY (ReservasiID) REFERENCES Reservasi(ReservasiID)
);

-- Tabel Karyawan
CREATE TABLE Karyawan (
    KaryawanID INT IDENTITY(1,1) PRIMARY KEY,
    NamaKaryawan VARCHAR(100) NOT NULL,
    Jabatan VARCHAR(50),
    Telepon VARCHAR(15),
    Email VARCHAR(100)
);

-- Tabel Jadwal Karyawan
CREATE TABLE JadwalKaryawan (
    JadwalID INT IDENTITY(1,1) PRIMARY KEY,
    KaryawanID INT,
    Tanggal DATE NOT NULL,
    Shift VARCHAR(50) NOT NULL,
    FOREIGN KEY (KaryawanID) REFERENCES Karyawan(KaryawanID)
);

-- Tabel Riwayat Kesehatan
CREATE TABLE RiwayatKesehatan (
    RiwayatID INT IDENTITY(1,1) PRIMARY KEY,
    HewanID INT,
    TanggalPemeriksaan DATE NOT NULL,
    CatatanKesehatan TEXT,
    Dokter VARCHAR(100),
    FOREIGN KEY (HewanID) REFERENCES Hewan(HewanID)
);

--INSERT DATA PELANGGAN
INSERT INTO Pelanggan (Nama, Alamat, Telepon, Email) VALUES
('Iqbal Andika', 'Jl. Merdeka 10, Bandung', '081234567890', 'iqbal@gmail.com'),
('Siti Aminah', 'Jl. Sudirman 45, Jakarta', '081345678901', 'siti@gmail.com'),
('Budi Setiawan', 'Jl. Anggrek 20, Surabaya', '081987654321', 'budi@gmail.com'),
('Ratna Wijaya', 'Jl. Gajah Mada 9, Semarang', '081223344556', 'ratna@gmail.com'),
('Hadi Pratama', 'Jl. Diponegoro 12, Jogja', '081334455667', 'hadi@gmail.com'),
('Andi Sugiono', 'Jl. Kencana 15, Medan', '081556677889', 'andi@gmail.com'),
('Rina Susanti', 'Jl. Melati 7, Bekasi', '081778899001', 'rina@gmail.com'),
('Bayu Kurniawan', 'Jl. Mawar 2, Tangerang', '081990011223', 'bayu@gmail.com'),
('Tia Marlina', 'Jl. Sakura 3, Depok', '081112233445', 'tia@gmail.com'),
('Farhan Hakim', 'Jl. Bunga Matahari 5, Malang', '081998877665', 'farhan@gmail.com'),
('Susi Rahmawati', 'Jl. Kemuning 4, Batam', '081334455667', 'susi@gmail.com'),
('Hendra Putra', 'Jl. Pelita 6, Makassar', '081223344556', 'hendra@gmail.com'),
('Nina Lestari', 'Jl. Sentosa 8, Balikpapan', '081778899101', 'nina@gmail.com'),
('Dedi Firmansyah', 'Jl. Danau Toba 7, Bandung', '081990022334', 'dedi@gmail.com'),
('Linda Kusuma', 'Jl. Ahmad Yani 13, Yogyakarta', '081112234455', 'linda@gmail.com'),
('Arif Hidayat', 'Jl. Pahlawan 10, Bogor', '081998888766', 'arif@gmail.com'),
('Dewi Anggraeni', 'Jl. Kenanga 12, Semarang', '081334466667', 'dewi@gmail.com'),
('Galih Saputra', 'Jl. Flamboyan 15, Surabaya', '081223355566', 'galih@gmail.com'),
('Fina Apriyani', 'Jl. Dahlia 9, Palembang', '081778800901', 'fina@gmail.com'),
('Yoga Pratama', 'Jl. Diponegoro 5, Solo', '081990033445', 'yoga@gmail.com'),
('Tina Widyaningsih', 'Jl. Cemara 3, Bogor', '081113344556', 'tina@gmail.com'),
('Dani Setiawan', 'Jl. Sutra 1, Pontianak', '081999888667', 'dani@gmail.com'),
('Melisa Chandra', 'Jl. Nusa Indah 8, Denpasar', '081335566667', 'melisa@gmail.com'),
('Fikri Ananda', 'Jl. Sudirman 18, Jakarta', '081224455667', 'fikri@gmail.com'),
('Citra Lestari', 'Jl. Kebun Raya 17, Bogor', '081778899201', 'citra@gmail.com'),
('Haris Firdaus', 'Jl. Melur 6, Palangkaraya', '081990044556', 'haris@gmail.com'),
('Ika Susanti', 'Jl. Surya 5, Surabaya', '081114455667', 'ika@gmail.com'),
('Rendi Saputra', 'Jl. Sakura 9, Tangerang', '081998999778', 'rendi@gmail.com'),
('Lina Kusumawati', 'Jl. Matahari 10, Bandung', '081336677778', 'lina@gmail.com'),
('Ali Wijaya', 'Jl. Sriwijaya 8, Jakarta', '081225566778', 'ali@gmail.com');

--INSERT DATA HEWAN
INSERT INTO Hewan (PelangganID, NamaHewan, Jenis, Umur, Keterangan) VALUES
(1, 'Buddy', 'Anjing', 3, 'Golden Retriever sehat'),
(2, 'Kitty', 'Kucing', 2, 'Suka bermain'),
(3, 'Max', 'Kelinci', 1, 'Hewan peliharaan keluarga'),
(4, 'Charlie', 'Anjing', 5, 'Memiliki masalah kulit'),
(5, 'Bella', 'Kucing', 4, 'Rutin perawatan bulu'),
(6, 'Rocky', 'Kura-kura', 8, 'Cangkang terluka ringan'),
(7, 'Milo', 'Kucing', 3, 'Tidak nafsu makan'),
(8, 'Snowy', 'Hamster', 1, 'Lucu dan aktif'),
(9, 'Coco', 'Burung', 2, 'Burung parkit warna-warni'),
(10, 'Lulu', 'Anjing', 4, 'Bulu lebat, suka menggonggong'),
(11, 'Tom', 'Kucing', 2, 'Kucing berbulu panjang'),
(12, 'Jerry', 'Hamster', 1, 'Suka berlari di roda'),
(13, 'Rex', 'Anjing', 6, 'Sudah divaksinasi lengkap'),
(14, 'Simba', 'Kucing', 5, 'Terkadang agresif'),
(15, 'Mimi', 'Kelinci', 3, 'Sangat jinak'),
(16, 'Oscar', 'Anjing', 4, 'Bermasalah dengan bulu rontok'),
(17, 'Chloe', 'Kucing', 3, 'Sehat dan aktif'),
(18, 'Jack', 'Burung', 1, 'Rajin berkicau'),
(19, 'Daisy', 'Hamster', 2, 'Hewan peliharaan anak-anak'),
(20, 'Luna', 'Anjing', 3, 'Setia dan cerdas'),
(21, 'Leo', 'Kucing', 4, 'Suka tidur sepanjang hari'),
(22, 'Sunny', 'Burung', 2, 'Burung kenari ceria'),
(23, 'Kiki', 'Hamster', 1, 'Sangat aktif di malam hari'),
(24, 'Shadow', 'Kucing', 6, 'Suka bermain di luar'),
(25, 'Brownie', 'Kelinci', 2, 'Punya bulu cokelat halus'),
(26, 'Zoe', 'Anjing', 5, 'Suka berenang'),
(27, 'Loki', 'Kucing', 4, 'Pintar dan suka bermain bola'),
(28, 'Bubbles', 'Ikan', 1, 'Hidup di akuarium besar'),
(29, 'Bolt', 'Anjing', 3, 'Cerdas dan tangkas'),
(30, 'Nemo', 'Ikan', 1, 'Ikan kecil yang lucu');

--INSERT DATA RIWAYAT KESEHATAN
INSERT INTO RiwayatKesehatan (HewanID, TanggalPemeriksaan, CatatanKesehatan, Dokter) VALUES
(1, '2024-01-01', 'Pemeriksaan rutin, kondisi sehat.', 'Ahmad Basri'),
(2, '2024-01-02', 'Vaksinasi tahunan, kondisi baik.', 'Faisal Akbar'),
(3, '2024-01-03', 'Alergi makanan tertentu, diberikan obat.', 'Siti Rahma'),
(4, '2024-01-04', 'Pemeriksaan awal, kondisi sehat.', 'Dian Kurniawan'),
(5, '2024-01-05', 'Sterilisasi, pemulihan baik.', 'Nadia Kusuma'),
(6, '2024-01-06', 'Pemeriksaan rutin, kondisi sehat.', 'Slamet Widodo'),
(7, '2024-01-07', 'Energi tinggi, butuh lebih banyak latihan.', 'Teguh Santoso'),
(8, '2024-01-08', 'Kucing indoor, kondisi sehat.', 'Yoga Saputra'),
(9, '2024-01-09', 'Anjing senior, butuh perawatan khusus.', 'Widya Marlina'),
(10, '2024-01-10', 'Suka memanjat, kondisi sehat.', 'Ahmad Basri'),
(11, '2024-01-11', 'Butuh pembersihan gigi.', 'Faisal Akbar'),
(12, '2024-01-12', 'Sangat pemalu, kondisi sehat.', 'Siti Rahma'),
(13, '2024-01-13', 'Sangat protektif, kondisi baik.', 'Dian Kurniawan'),
(14, '2024-01-14', 'Suka berpetualang, kondisi sehat.', 'Nadia Kusuma'),
(15, '2024-01-15', 'Ramah dengan anak-anak, kondisi baik.', 'Slamet Widodo'),
(16, '2024-01-16', 'Lebih suka makanan basah, kondisi sehat.', 'Teguh Santoso'),
(17, '2024-01-17', 'Suka bermain fetch, kondisi baik.', 'Yoga Saputra'),
(18, '2024-01-18', 'Suka lingkungan tenang, kondisi sehat.', 'Widya Marlina'),
(19, '2024-01-19', 'Butuh lebih banyak latihan, kondisi baik.', 'Ahmad Basri'),
(20, '2024-01-20', 'Anak kucing yang suka bermain, kondisi sehat.', 'Faisal Akbar'),
(21, '2024-01-21', 'Kuat dan aktif, kondisi baik.', 'Siti Rahma'),
(22, '2024-01-22', 'Suka tidur, kondisi sehat.', 'Dian Kurniawan'),
(23, '2024-01-23', 'Baik dengan anjing lain, kondisi baik.', 'Nadia Kusuma'),
(24, '2024-01-24', 'Butuh grooming, kondisi sehat.', 'Slamet Widodo'),
(25, '2024-01-25', 'Anjing senior, butuh suplemen sendi.', 'Teguh Santoso'),
(26, '2024-01-26', 'Sangat penyayang, kondisi sehat.', 'Yoga Saputra'),
(27, '2024-01-27', 'Suka berenang, kondisi baik.', 'Widya Marlina'),
(28, '2024-01-28', 'Lebih suka makanan kering, kondisi sehat.', 'Ahmad Basri'),
(29, '2024-01-29', 'Butuh pelatihan ketaatan, kondisi baik.', 'Faisal Akbar'),
(30, '2024-01-30', 'Pemalu tapi ramah, kondisi sehat.', 'Siti Rahma');

--INSERT DATA LAYANAN
INSERT INTO Layanan (NamaLayanan, Deskripsi, Harga) VALUES
('Grooming', 'Perawatan bulu hewan', 150000),
('Konsultasi Kesehatan', 'Pemeriksaan kesehatan oleh dokter hewan', 200000),
('Penitipan Hewan', 'Penitipan hewan untuk beberapa hari', 300000),
('Vaksinasi', 'Pemberian vaksin untuk hewan', 250000),
('Sterilisasi', 'Prosedur sterilisasi hewan', 500000),
('Pemeriksaan Rutin', 'Pemeriksaan kesehatan bulanan', 100000),
('Pembersihan Telinga', 'Membersihkan telinga hewan', 80000),
('Pembersihan Gigi', 'Membersihkan gigi hewan', 90000),
('Pemotongan Kuku', 'Memotong kuku hewan', 50000),
('Pemeriksaan Darah', 'Tes darah lengkap untuk hewan', 300000),
('Radiologi', 'Pemeriksaan menggunakan sinar X', 400000),
('Ultrasonografi', 'USG untuk diagnosis hewan', 450000),
('Fisioterapi', 'Terapi fisik untuk hewan', 350000),
('Penitipan Khusus', 'Penitipan dengan layanan khusus', 600000),
('Pemeriksaan Mata', 'Pemeriksaan mata oleh dokter', 120000),
('Perawatan Luka', 'Membersihkan dan merawat luka', 200000),
('Operasi Ringan', 'Prosedur bedah ringan', 700000),
('Operasi Berat', 'Prosedur bedah kompleks', 1500000),
('Rawat Inap', 'Perawatan inap untuk hewan sakit', 800000),
('Konsultasi Nutrisi', 'Saran diet untuk hewan', 100000),
('Pengobatan Infeksi', 'Obat dan perawatan infeksi', 200000),
('Rehabilitasi', 'Pemulihan pasca operasi', 500000),
('Sterilisasi Jantan', 'Sterilisasi khusus jantan', 400000),
('Sterilisasi Betina', 'Sterilisasi khusus betina', 600000),
('Pengangkutan Hewan', 'Transportasi aman untuk hewan', 150000),
('Pemeriksaan Kulit', 'Diagnosis masalah kulit', 180000),
('Vaksin Rabies', 'Vaksinasi rabies', 300000),
('Vaksin Kombinasi', 'Paket vaksin lengkap', 500000),
('Layanan Darurat', 'Layanan 24 jam untuk kondisi darurat', 1000000),
('Grooming', 'Perawatan bulu hewan', 150000);

--INSERT DATA RESERVASI
INSERT INTO Reservasi (PelangganID, HewanID, LayananID, TanggalReservasi, DurasiHari) VALUES
(1, 1, 1, '2024-11-20', 3),
(2, 2, 2, '2024-11-21', 1),
(3, 3, 3, '2024-11-22', 5),
(4, 4, 4, '2024-11-23', 2),
(5, 5, 5, '2024-11-24', 4),
(6, 6, 6, '2024-11-25', 3),
(7, 7, 7, '2024-11-26', 2),
(8, 8, 8, '2024-11-27', 1),
(9, 9, 9, '2024-11-28', 4),
(10, 10, 10, '2024-11-29', 2),
(11, 11, 11, '2024-11-30', 3),
(12, 12, 12, '2024-12-01', 1),
(13, 13, 13, '2024-12-02', 2),
(14, 14, 14, '2024-12-03', 3),
(15, 15, 15, '2024-12-04', 4),
(16, 16, 16, '2024-12-05', 2),
(17, 17, 17, '2024-12-06', 5),
(18, 18, 18, '2024-12-07', 3),
(19, 19, 19, '2024-12-08', 2),
(20, 20, 20, '2024-12-09', 4),
(21, 21, 21, '2024-12-10', 3),
(22, 22, 22, '2024-12-11', 5),
(23, 23, 23, '2024-12-12', 1),
(24, 24, 24, '2024-12-13', 2),
(25, 25, 25, '2024-12-14', 3),
(26, 26, 26, '2024-12-15', 4),
(27, 27, 27, '2024-12-16', 5),
(28, 28, 28, '2024-12-17', 3),
(29, 29, 29, '2024-12-18', 2),
(30, 30, 30, '2024-12-19', 1);

--INSERT DATA PEMBAYARAN
INSERT INTO Pembayaran (ReservasiID, TanggalPembayaran, Jumlah, MetodePembayaran) VALUES
(1, '2024-11-01', 150000.00, 'Transfer Bank'),
(2, '2024-11-02', 200000.00, 'Kartu Kredit'),
(3, '2024-11-03', 100000.00, 'Cash'),
(4, '2024-11-04', 750000.00, 'Transfer Bank'),
(5, '2024-11-05', 1500000.00, 'Kartu Kredit'),
(6, '2024-11-06', 300000.00, 'Cash'),
(7, '2024-11-07', 250000.00, 'Transfer Bank'),
(8, '2024-11-08', 240000.00, 'Kartu Kredit'),
(9, '2024-11-09', 80000.00, 'Cash'),
(10, '2024-11-10', 50000.00, 'Transfer Bank'),
(11, '2024-11-11', 200000.00, 'Kartu Kredit'),
(12, '2024-11-12', 400000.00, 'Cash'),
(13, '2024-11-13', 150000.00, 'Transfer Bank'),
(14, '2024-11-14', 200000.00, 'Kartu Kredit'),
(15, '2024-11-15', 500000.00, 'Cash'),
(16, '2024-11-16', 250000.00, 'Transfer Bank'),
(17, '2024-11-17', 1000000.00, 'Kartu Kredit'),
(18, '2024-11-18', 3000000.00, 'Cash'),
(19, '2024-11-19', 75000.00, 'Transfer Bank'),
(20, '2024-11-20', 200000.00, 'Kartu Kredit'),
(21, '2024-11-21', 100000.00, 'Cash'),
(22, '2024-11-22', 50000.00, 'Transfer Bank'),
(23, '2024-11-23', 500000.00, 'Kartu Kredit'),
(24, '2024-11-24', 300000.00, 'Cash'),
(25, '2024-11-25', 600000.00, 'Transfer Bank'),
(26, '2024-11-26', 400000.00, 'Kartu Kredit'),
(27, '2024-11-27', 150000.00, 'Cash'),
(28, '2024-11-28', 700000.00, 'Transfer Bank'),
(29, '2024-11-29', 350000.00, 'Kartu Kredit'),
(30, '2024-11-30', 100000.00, 'Cash');

--INSERT DATA KARYAWAN
INSERT INTO Karyawan (NamaKaryawan, Jabatan, Telepon, Email) VALUES
('Ahmad Basri', 'Dokter Hewan', '081234567891', 'ahmad.basri@clinic.com'),
('Dewi Lestari', 'Groomer', '081234567892', 'dewi.lestari@clinic.com'),
('Rina Suryani', 'Receptionist', '081234567893', 'rina.suryani@clinic.com'),
('Faisal Akbar', 'Dokter Hewan', '081234567894', 'faisal.akbar@clinic.com'),
('Citra Permata', 'Trainer', '081234567895', 'citra.permata@clinic.com'),
('Andi Saputra', 'Kasir', '081234567896', 'andi.saputra@clinic.com'),
('Siti Rahma', 'Dokter Hewan', '081234567897', 'siti.rahma@clinic.com'),
('Bayu Mahendra', 'Penjaga Hewan', '081234567898', 'bayu.mahendra@clinic.com'),
('Farah Nuraini', 'Asisten Dokter', '081234567899', 'farah.nuraini@clinic.com'),
('Dian Kurniawan', 'Dokter Hewan', '081234567900', 'dian.kurniawan@clinic.com'),
('Hendra Wijaya', 'Groomer', '081234567901', 'hendra.wijaya@clinic.com'),
('Laila Amalia', 'Receptionist', '081234567902', 'laila.amalia@clinic.com'),
('Rizki Fauzan', 'Trainer', '081234567903', 'rizki.fauzan@clinic.com'),
('Nadia Kusuma', 'Dokter Hewan', '081234567904', 'nadia.kusuma@clinic.com'),
('Rahmat Hidayat', 'Penjaga Hewan', '081234567905', 'rahmat.hidayat@clinic.com'),
('Dewi Anggraini', 'Kasir', '081234567906', 'dewi.anggraini@clinic.com'),
('Slamet Widodo', 'Dokter Hewan', '081234567907', 'slamet.widodo@clinic.com'),
('Nina Pratiwi', 'Asisten Dokter', '081234567908', 'nina.pratiwi@clinic.com'),
('Teguh Santoso', 'Dokter Hewan', '081234567909', 'teguh.santoso@clinic.com'),
('Vina Lestari', 'Trainer', '081234567910', 'vina.lestari@clinic.com'),
('Rudi Hartono', 'Groomer', '081234567911', 'rudi.hartono@clinic.com'),
('Melati Wulandari', 'Receptionist', '081234567912', 'melati.wulandari@clinic.com'),
('Fahmi Ananda', 'Kasir', '081234567913', 'fahmi.ananda@clinic.com'),
('Sabrina Oktavia', 'Trainer', '081234567914', 'sabrina.oktavia@clinic.com'),
('Yoga Saputra', 'Dokter Hewan', '081234567915', 'yoga.saputra@clinic.com'),
('Dini Paramitha', 'Asisten Dokter', '081234567916', 'dini.paramitha@clinic.com'),
('Reza Anggara', 'Penjaga Hewan', '081234567917', 'reza.anggara@clinic.com'),
('Widya Marlina', 'Dokter Hewan', '081234567918', 'widya.marlina@clinic.com'),
('Arif Kurnia', 'Groomer', '081234567919', 'arif.kurnia@clinic.com'),
('Yuni Astuti', 'Receptionist', '081234567920', 'yuni.astuti@clinic.com');

--INSERT DATA JADWAL KARYWAN
INSERT INTO JadwalKaryawan (KaryawanID, Tanggal, Shift) VALUES
(1, '2024-11-01', 'Pagi'),
(2, '2024-11-01', 'Siang'),
(3, '2024-11-01', 'Malam'),
(4, '2024-11-02', 'Pagi'),
(5, '2024-11-02', 'Siang'),
(6, '2024-11-02', 'Malam'),
(7, '2024-11-03', 'Pagi'),
(8, '2024-11-03', 'Siang'),
(9, '2024-11-03', 'Malam'),
(10, '2024-11-04', 'Pagi'),
(11, '2024-11-04', 'Siang'),
(12, '2024-11-04', 'Malam'),
(13, '2024-11-05', 'Pagi'),
(14, '2024-11-05', 'Siang'),
(15, '2024-11-05', 'Malam'),
(16, '2024-11-06', 'Pagi'),
(17, '2024-11-06', 'Siang'),
(18, '2024-11-06', 'Malam'),
(19, '2024-11-07', 'Pagi'),
(20, '2024-11-07', 'Siang'),
(21, '2024-11-07', 'Malam'),
(22, '2024-11-08', 'Pagi'),
(23, '2024-11-08', 'Siang'),
(24, '2024-11-08', 'Malam'),
(25, '2024-11-09', 'Pagi'),
(26, '2024-11-09', 'Siang'),
(27, '2024-11-09', 'Malam'),
(28, '2024-11-10', 'Pagi'),
(29, '2024-11-10', 'Siang'),
(30, '2024-11-10', 'Malam');

