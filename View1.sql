Create View DaftarHewan  AS
SELECT H.HewanID, P.Nama, H.NamaHewan, H.Jenis
FROM Hewan H
JOIN Pelanggan P ON H.PelangganID = P.PelangganID;










