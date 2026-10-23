# R1 Inventaris Data Pribadi
# Aplikasi: UniKantin | Kelompok: [Nomor Kelompok]

| Data              | Kategori UU PDP | Tujuan                 | Lokasi simpan | Retensi        | Perlindungan       |
|                   |                 |                        |               |                |                    |
| Riwayat Transaksi | Umum            | Pencatatan pengeluaran | Lokal         | Sampai dihapus | Encrypted Storage  |
| Budget Bulanan    | Umum            | Batas pengeluaran      | Lokal         | Sampai dihapus | Secure Storage     |
| PIN Keamanan      | Spesifik        | Autentikasi aplikasi   | Lokal         | Sampai dihapus | PBKDF2 Hash + Salt |

## Tidak Dikumpulkan (konfirmasi eksplisit)
- [x] Lokasi GPS
- [x] ID perangkat
- [x] Kontak & Kamera

## Requirement
- PRV-01: Minimisasi data (hanya simpan data transaksi kantin lokal).
- PRV-02: Bebas SDK analitik pihak ketiga.