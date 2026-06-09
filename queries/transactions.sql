-- Transaction 1: Subscription Purchase
-- Ensures both the subscription record and payment log are created successfully.
START TRANSACTION;
INSERT INTO tabel_subscription (subs_id, user_id, tipe_paket, tanggal_mulai, tanggal_berakhir) 
VALUES (605, 'u02', 'Premium Duo', '2026-06-05', '2026-07-05');
INSERT INTO tabel_transaksi (transaksi_id, user_id, subs_id, metode_pembayaran, jumlah_rp, tanggal_transaksi, status) 
VALUES (505, 'u02', 605, 'Gopay', 79000, '2026-06-05', 'sukses');
COMMIT;

-- Transaction 2: Add Song to Playlist
-- Atomic operation to add a song to a specific playlist.
START TRANSACTION;
INSERT INTO playlist_lagu (playlist_id, lagu_id, urutan_lagu) VALUES (401, 105, 3);
COMMIT;

-- Transaction 3: Update User Profile (Username)
-- Changes the user's username securely.
START TRANSACTION;
UPDATE tabel_user SET username = 'faiz_pro' WHERE user_id = 'u01';
COMMIT;

-- Transaction 4: Migrate Song to New Album
-- Moves a song and updates the album reference simultaneously to maintain data consistency.
START TRANSACTION;
UPDATE tabel_lagu SET album_id = 305 WHERE lagu_id = 101;
UPDATE tabel_album SET nama_album = 'After Hours - Special Edition' WHERE album_id = 301;
COMMIT;

-- Transaction 5: Delete User Account and History
-- Removes user data and listening history to comply with data privacy requirements.
START TRANSACTION;
DELETE FROM listening_history WHERE user_id = 'u04';
DELETE FROM tabel_user WHERE user_id = 'u04';
COMMIT;