-- Get all invoices where the unit_price on the invoice_line is greater than $0.99.
SELECT i.invoice_id, i.invoice_date, l.unit_price 
FROM invoice i 
JOIN invoice_line l
ON i.invoice_id = l.invoice_id
WHERE l.unit_price > 0.99;

-- Get the invoice_date, customer first_name and last_name, and total from all invoices.
SELECT c.first_name, c.last_name, i.invoice_date, i.total
FROM customer c
JOIN invoice i
ON c.customer_id = i.customer_id;

-- Get the customer first_name and last_name and the support rep’s first_name and last_name from all customers.
SELECT c.first_name, c.last_name, e.first_name, e.last_name
FROM customer c
JOIN employee e 
ON c.support_rep_id = e.employee_id;

-- Get the album title and the artist name from all albums.
SELECT artist.name, album.title
FROM artist
JOIN album 
ON artist.artist_id = album.artist_id;

-- Get all playlist_track track_ids where the playlist name is Music.
SELECT playlist_track.track_id, playlist.name
FROM playlist_track
JOIN playlist
ON playlist.playlist_id = playlist_track.playlist_id
WHERE playlist.name = 'Music';


-- Get all track name`s for `playlist_id.


-- Get all track name`s and the playlist `name that they’re on ( 2 joins ).

-- Get all track name`s and album `title`s that are the genre `Alternative & Punk ( 2 joins ).


