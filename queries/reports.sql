-- 1. Detailed Song Information (JOIN)
SELECT l.judul_lagu, a.nama_artist, al.nama_album
FROM tabel_lagu l
JOIN tabel_artist a ON l.artist_id = a.artist_id
JOIN tabel_album al ON l.album_id = al.album_id;

-- 2. Top 5 Artists by Follower Count
SELECT nama_artist, follower 
FROM tabel_artist 
ORDER BY follower DESC LIMIT 5;

-- 3. Total Revenue by Payment Method
SELECT metode_pembayaran, SUM(jumlah_rp) as total_pendapatan
FROM tabel_transaksi
GROUP BY metode_pembayaran;

-- 4. User Listening History (Recent Activity)
SELECT u.username, l.judul_lagu, h.waktu_putar
FROM listening_history h
JOIN tabel_user u ON h.user_id = u.user_id
JOIN tabel_lagu l ON h.lagu_id = l.lagu_id
ORDER BY h.waktu_putar DESC LIMIT 5;

-- 5. Count of Songs in Each Playlist
SELECT p.nama_playlist, COUNT(pl.lagu_id) as total_songs
FROM tabel_playlist p
JOIN playlist_lagu pl ON p.playlist_id = pl.playlist_id
GROUP BY p.nama_playlist
ORDER BY total_songs DESC LIMIT 5;