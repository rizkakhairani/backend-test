CREATE TABLE transaksi (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    tgl_order DATETIME NOT NULL, 
    status ENUM('lunas', 'pending') DEFAULT 'pending' NOT NULL,
    tgl_bayar DATETIME
);

INSERT INTO transaksi (tgl_order, status, tgl_bayar) VALUES 
    ('2021-11-22 00:00:00', 'lunas', '2021-11-22 01:00:00'),
    ('2021-11-22 02:30:00', 'lunas', '2021-11-22 03:00:00'),
    ('2021-11-22 03:00:00', 'lunas', '2021-11-22 04:00:00'),
    ('2021-11-22 04:00:00', 'lunas', '2021-11-22 05:00:00'),
    ('2021-11-22 05:30:00', 'lunas', '2021-11-22 07:00:00'),
    ('2021-11-22 08:00:00', 'lunas', '2021-11-22 10:00:00'),
    ('2021-11-22 09:00:00', 'lunas', '2021-11-22 10:30:00'),
    ('2021-11-22 10:00:00', 'pending', NULL),
    ('2021-11-22 11:00:00', 'pending', NULL),
    ('2021-11-22 11:30:00', 'pending', NULL);