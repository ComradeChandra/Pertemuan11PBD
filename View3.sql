CREATE VIEW TransferBank AS
SELECT 
 P.Nama AS NamaPelanggan,
B.TanggalPembayaran,
B.Jumlah,
B.MetodePembayaran
FROM 
Pelanggan P
JOIN 
Reservasi R ON P.PelangganID = R.PelangganID
JOIN 
Pembayaran B ON R.ReservasiID = B.ReservasiID
WHERE 
 B.MetodePembayaran = 'Transfer Bank';