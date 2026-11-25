# Pertemuan 10 - Analisis Kebutuhan Data dan Dasar MySQL Satu Tabel

Mata Kuliah: Pemrograman Web Dasar (IS205)
NIM: 2622500058
Nama: Laras Bramantio

## 1. Baseline P9
- Berkas P9 (index.php, fungsi.php, script.js, style.css, img/foto-profil.jpg) disalin ke `pertemuan-10\`.
- Kode dan fitur P9 dipertahankan; P10 berfokus pada basis data.
- Hasil pemeriksaan: [isi hasil aktual: formulir tampil dan berfungsi seperti P9]

## 2. Lingkungan
- Laragon: Apache dan MySQL (Start All).
- phpMyAdmin: http://localhost/phpmyadmin/ (user `root`, password kosong).
- Hasil pemeriksaan: [isi hasil aktual]

## 3. Analisis Kebutuhan Data (Formulir Kontak P9)

| No | Data | Atribut name | Jenis Input |
|----|------|--------------|-------------|
| 1 | Nama lengkap | nama | Text |
| 2 | Email | email | Email |
| 3 | Semester | semester | Number |
| 4 | Tanggal kunjungan | tanggal | Date |
| 5 | Jenis pesan | jenis_pesan | Radio |
| 6 | Topik yang diminati | minat[] | Checkbox |
| 7 | Program studi | prodi | Select |
| 8 | Pesan | pesan | Textarea |

- Hanya delapan data formulir yang disimpan; data profil (NIM, nama mahasiswa) tidak termasuk.
- Field `minat[]` (checkbox, bisa lebih dari satu) disimpan dalam satu kolom `minat` sebagai teks dipisah koma, contoh `HTML, CSS`. Ini penyederhanaan untuk pembelajaran, bukan normalisasi yang ideal.

## 4. Rancangan Tabel
- Basis data: `db_pwd_2622500058`
- Tabel: `tbl_kontak_2622500058`

| No | Atribut | Tipe Data | Ketentuan |
|----|---------|-----------|-----------|
| 1 | id | INT | PRIMARY KEY, AUTO_INCREMENT |
| 2 | nama | VARCHAR(50) | - |
| 3 | email | VARCHAR(255) | - |
| 4 | semester | TINYINT | - |
| 5 | tanggal | DATE | - |
| 6 | jenis_pesan | VARCHAR(20) | - |
| 7 | minat | VARCHAR(50) | - |
| 8 | prodi | VARCHAR(2) | - |
| 9 | pesan | VARCHAR(300) | - |

## 5. Implementasi
Perintah SQL setara dengan langkah di phpMyAdmin:

```sql
CREATE DATABASE db_pwd_2622500058;
USE db_pwd_2622500058;
CREATE TABLE tbl_kontak_2622500058 (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nama VARCHAR(50),
    email VARCHAR(255),
    semester TINYINT,
    tanggal DATE,
    jenis_pesan VARCHAR(20),
    minat VARCHAR(50),
    prodi VARCHAR(2),
    pesan VARCHAR(300)
);
DESCRIBE tbl_kontak_2622500058;
```

Hasil pemeriksaan struktur (tab Structure / DESCRIBE): [isi hasil aktual: 9 kolom, id PRI + auto_increment]

## 6. Data Awal
Data dimasukkan lewat fasilitas Insert (id dikosongkan) dan perintah SQL:

```sql
INSERT INTO tbl_kontak_2622500058
    (nama, email, semester, tanggal, jenis_pesan, minat, prodi, pesan)
VALUES
    ('Andi', 'andi@example.com', 2, '2026-11-15',
     'pertanyaan', 'HTML, CSS', 'TI', 'Saya ingin belajar pemrograman web.');
```

Hasil Browse: [isi hasil aktual: jumlah baris, id otomatis 1 dan 2, minat tampil sebagai teks]

## 7. Ekspor
- Export method: Quick
- Format: SQL
- Berkas: `db_pwd_2622500058.sql` disimpan di `pertemuan-10\`
- Pemeriksaan di VS Code: `CREATE TABLE` dan `INSERT INTO` ada, nama tabel dan 9 atribut sesuai, data sesuai Browse. [isi hasil aktual]

## 8. Struktur Direktori
```
pertemuan-10\
├── index.php
├── fungsi.php
├── script.js
├── style.css
├── README.md
├── db_pwd_2622500058.sql
└── img\
    └── foto-profil.jpg
```

## 9. Cara Menjalankan
1. Jalankan Laragon, klik Start All.
2. Buka http://localhost/ untuk aplikasi dan http://localhost/phpmyadmin/ untuk basis data.
3. Untuk memakai ulang basis data: phpMyAdmin > Import > pilih `db_pwd_2622500058.sql`.

## 10. Git
Commit dilakukan bertahap (`git add .`, `git commit -m "..."`, `git push`) setelah setiap tahap diperiksa.
