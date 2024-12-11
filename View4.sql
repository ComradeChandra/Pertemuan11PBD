CREATE VIEW DataPembayaran AS
SELECT P.PembayaranID, P.ReservasiID, P.TanggalPembayaran, P.Jumlah, P.MetodePembayaran 
FROM Pembayaran P;