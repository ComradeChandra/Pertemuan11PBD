CREATE VIEW DaftarReservasi AS
SELECT R.ReservasiID, P.Nama, H.NamaHewan, H.Jenis, L.NamaLayanan, R.TanggalReservasi,
R.DurasiHari, K.NamaKaryawan
FROM Reservasi R
JOIN Pelanggan P ON R.PelangganID = P.PelangganID
JOIN Hewan H ON R.HewanID = H.HewanID
JOIN Layanan L ON R.LayananID = L.LayananID
JOIN Karyawan K on R.KaryawanID = K.KaryawanID;