CREATE VIEW DataKesehatan AS
SELECT K.RiwayatID, K.HewanID, K.TanggalPemeriksaan, K.CatatanKesehatan, K.Dokter
FROM RiwayatKesehatan K;