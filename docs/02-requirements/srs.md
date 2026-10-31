# Software Requirements Specification (Ringkas) — UniKantin

**Versi:** 1.0  
**Tanggal:** 31 Oktober 2026  
**Topik:** UniKantin  

---

## 1. Tujuan Dokumen

Dokumen ini mendefinisikan kebutuhan fungsional dan non-fungsional aplikasi UniKantin (pencatat pengeluaran kantin berbasis offline-first) sebagai dasar desain UI (M03) dan implementasi kode (M04).

---

## 2. Kebutuhan Fungsional

| ID | Deskripsi | Sumber User Story | Prioritas |
|---|---|---|---|
| FR-01 | Sistem menerima input transaksi (nominal, kategori, catatan, tanggal) dan menyimpannya ke basis data lokal | US-01 | Must |
| FR-02 | Sistem menampilkan daftar transaksi dan ringkasan total per bulan serta persentase pemakaian budget | US-02 | Must |
| FR-03 | Sistem menyimpan batas anggaran bulanan di penyimpanan aman dan memberikan peringatan visual | US-03 | Must |
| FR-04 | Sistem memverifikasi PIN berbasis PBKDF2 HMAC-SHA256 sebelum membuka akses data | US-04 | Must |
| FR-05 | Sistem menghapus seluruh data pengguna (transaksi, budget, PIN) saat fitur Hapus Data dikonfirmasi | US-PRV-03 | Must |
| FR-06 | Sistem mengekspor seluruh riwayat transaksi ke dalam file CSV | US-PRV-04 | Should |

---

## 3. Kebutuhan Non-Fungsional

Disalin dari `docs/01-compliance/requirements-catalog.md` (M01):

| ID | Kategori | Deskripsi | Cara Verifikasi | Status |
|---|---|---|---|---|
| PRV-01 | Privasi | Data 100% disimpan di perangkat lokal (Offline-First) | Code review: tidak ada HTTP/network call | Belum |
| PRV-03 | Privasi | Pengguna dapat menghapus semua data ≤ 2 ketukan | Uji manual: Tap Hapus → Konfirmasi | Belum |
| PRV-04 | Privasi | Pengguna dapat mengekspor data dalam format CSV | Uji: File CSV ter-generate | Belum |
| SEC-01 | Keamanan | Data sensitif (PIN hash, budget) disimpan di `flutter_secure_storage` | Code review: Cek SecureStorageService | ✅ M01 |
| SEC-02 | Keamanan | PIN menggunakan PBKDF2 dengan salt acak 16 byte | Code review: Cek PinService | ✅ M01 |
| UX-01 | UX | Waktu respons simpan transaksi lokal < 100ms | Profiling di emulator | Belum |
| UX-03 | UX | Pesan error validasi jelas saat nominal 0 atau kategori kosong | Uji: Submit form kosong | Belum |

---

## 4. Batasan Sistem

- Aplikasi berjalan pada Android (minSdk 21).
- Data disimpan 100% lokal di perangkat (M01–M04); tidak ada sinkronisasi cloud atau server backend.
- Tidak ada autentikasi berbasis akun online; keamanan hanya lewat PIN lokal terenkripsi.
- Kategori transaksi pengeluaran kantin mencakup: Makanan, Minuman, Camilan, Lainnya.

---

## 5. Asumsi

- Pengguna menggunakan aplikasi secara mandiri di perangkat smartphone pribadi.
- Pengguna mengingat PIN 6-digit yang telah dibuat.
- Penyimpanan lokal perangkat cukup untuk menyimpan riwayat transaksi berbasis SQLite.