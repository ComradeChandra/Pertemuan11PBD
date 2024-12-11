CREATE VIEW ViewHewanKucing AS
SELECT 
    H.HewanID,
    H.NamaHewan,
    H.Jenis,
    H.Umur,
    H.Keterangan,
    P.Nama AS NamaPelanggan,
    P.Alamat AS AlamatPelanggan,
    P.Telepon AS TeleponPelanggan
FROM 
    Hewan H
JOIN 
    Pelanggan P ON H.PelangganID = P.PelangganID
WHERE 
    H.Jenis = 'Kucing';

SELECT * FROM ViewHewanKucing;