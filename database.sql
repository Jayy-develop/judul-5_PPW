CREATE DATABASE IF NOT EXISTS db_mahasiswa
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

USE db_mahasiswa;

CREATE TABLE IF NOT EXISTS mahasiswa (
    id INT AUTO_INCREMENT PRIMARY KEY,
    npm VARCHAR(20) NOT NULL UNIQUE,
    nama VARCHAR(100) NOT NULL,
    program_studi VARCHAR(100) NOT NULL,
    angkatan INT NOT NULL,
    email VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB;

INSERT INTO mahasiswa (npm, nama, program_studi, angkatan, email) VALUES
('230101001', 'Ahmad Fauzi', 'Teknik Informatika', 2023, 'ahmad.fauzi@example.com'),
('230101002', 'Siti Nurhaliza', 'Sistem Informasi', 2023, 'siti.nurhaliza@example.com'),
('240101015', 'Budi Santoso', 'Teknologi Informasi', 2024, 'budi.santoso@example.com'),
('240101020', 'Dewi Lestari', 'Rekayasa Perangkat Lunak', 2024, 'dewi.lestari@example.com')
ON DUPLICATE KEY UPDATE
    nama = VALUES(nama),
    program_studi = VALUES(program_studi),
    angkatan = VALUES(angkatan),
    email = VALUES(email);