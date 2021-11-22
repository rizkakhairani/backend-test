SELECT t.id as id, t.tgl_order as tanggal_order, t.status as status, 
	t.tgl_bayar as tanggal_pembayaran, SUM(dt.subtotal) as total,
    SUM(dt.jumlah) as jumlah_barang
FROM transaksi t JOIN detail_transaksi dt ON t.id = dt.id_transaksi
GROUP BY t.id;