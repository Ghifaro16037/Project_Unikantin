# Charter UniKantin
# Topik: UniKantin
# Kelompok: [Unikantin] (Ghifaro, Awalludin, Burhan, Safar)

## Visi
Aplikasi pemesanan dan pencatatan transaksi kantin kampus yang cepat, privat, dan aman.

## Tujuan Terukur
1. Menyelesaikan pencatatan transaksi kantin < 10 detik dari layar utama.
2. Menyajikan ringkasan pengeluaran kantin bulanan dengan batas budget otomatis.

## Pengguna Sasaran
Mahasiswa dan civitas akademika UAD (1 pengguna per perangkat, Android).

## Scope
### Must (Wajib Ada)
- Katalog menu & pesanan kantin[cite: 6].
- Riwayat transaksi & ringkasan bulanan[cite: 6, 7].
- Indikator budget kantin (Aman/Waspada/Over)[cite: 7].
- Pengamanan PIN aplikasi & hapus semua data[cite: 7].

### Won't (Tidak Dikerjakan Sekarang)
- Akun cloud / login & integrasi bank/payment gateway[cite: 6, 7].
- Fitur lokasi GPS & kamera[cite: 26].

## Batasan
Offline-first, Flutter, tanpa SDK analitik pihak ketiga, durasi 1 semester[cite: 7, 26].

## Risiko Awal
1. Risiko keamanan data transaksi keuangan pribadi (UU PDP)[cite: 7, 27].
2. Perubahan arsitektur saat M05 mengaktifkan Firebase/server[cite: 7].

## Kriteria Sukses
Seluruh kontrol PRV/SEC lulus pengujian dan 5 layar utama diuji pengguna[cite: 7].