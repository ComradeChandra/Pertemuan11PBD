CREATE VIEW JadwalKerja AS
SELECT J.JadwalID, J.Tanggal, J.Shift, K.NamaKaryawan
FROM JadwalKaryawan J
JOIN Karyawan K ON J.KaryawanID = K.KaryawanID;