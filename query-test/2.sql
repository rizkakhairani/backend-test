CREATE TABLE detail_transaksi (
	id INT NOT NULL AUTO_INCREMENT,
    id_transaksi INT NOT NULL,
    harga INT NOT NULL,
    jumlah INT NOT NULL,
    subtotal INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_transaksi) REFERENCES transaksi(id)
);

INSERT INTO detail_transaksi (id_transaksi, harga, jumlah, subtotal) VALUES 
    (1, 20000, 1, 20000),
    (1, 25000, 2, 50000),
    (2, 10000, 1, 10000),
    (3, 15000, 2, 30000),
    (4, 20000, 2, 40000),
    (4, 10000, 1, 10000),
    (5, 10000, 2, 20000),
    (6, 30000, 3, 90000),
    (6, 10000, 1, 10000),
    (7, 20000, 1, 20000),
    (8, 10000, 3, 30000),
    (9, 20000, 2, 40000),
    (9, 10000, 3, 30000),
    (10, 20000, 2, 40000);