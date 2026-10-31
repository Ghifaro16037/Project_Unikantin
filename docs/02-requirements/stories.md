# User Stories — UniKantin

**Versi:** 1.0  
**Tanggal:** 31 Oktober 2026  
**Topik:** UniKantin (Offline-First Canteen Expense Tracker)

---

## US-01 · Catat Transaksi Pengeluaran

**Prioritas:** Must  
**Req ID:** FR-01

> Sebagai **mahasiswa pengguna UniKantin**,  
> saya ingin **mencatat transaksi kantin harian (nama item, nominal, kategori, dan tanggal)**,  
> agar **saya dapat melacak pengeluaran kantin saya secara real-time**.

**Acceptance Criteria:**

```gherkin
Given pengguna membuka halaman Tambah Transaksi
When  pengguna mengisi nominal > 0, memilih kategori, dan mengetuk Simpan
Then  transaksi tersimpan ke basis data lokal
  And total pengeluaran dan sisa budget bulanan diperbarui
  And muncul notifikasi "Transaksi Berhasil Disimpan!"
```

---

## US-02 . Lihat Ringkasan Pengeluaran Kantin

**Prioritas :** Must
**Req ID:** FR-02

> Sebagai **mahasiswa pengguna UniKantin**,
> saya ingin **melihat ringkasan total pengeluaran per kategori bulan ini**,
> agar **saya mengetahui pos pengeluaran kantin yang paling dominan**.

**Acceptance Criteria:**

```gherkin
Given pengguna berada di halaman Utama / Ringkasan
When  halaman dimuat
Then  sistem menampilkan total akumulasi pengeluaran bulan ini
  And rincian pengeluaran per kategori (Makanan, Minuman, Camilan) ditampilkan
  And indikator persentase pemakaian budget diperbarui
```

---

## US-03 . Atur Batas Anggaran Bulanan (Budget Guard)

**Prioritas:** Must
**Req ID:** FR-03

> Sebagai **mahasiswa pengguna UniKantin**,
> saya ingin **menetapkan batas anggaran pengeluaran kantin bulanan**,
> agar **saya mendapatkan peringatan saat pengeluaran mendekati limit**.

**Acceptance Criteria:**

```gherkin
Given pengguna membuka menu Pengaturan → Batas Anggaran
When  pengguna memasukkan nominal budget dan menyimpan
Then  nominal budget tersimpan secara aman di Secure Storage
  And sistem menampilkan peringatan visual jika total pengeluaran ≥ 80% budget
```

---

## US-04 · Otentikasi Keamanan PIN

**Prioritas:** Must
**Req ID:** FR-04 / SEC-02

> Sebagai **mahasiswa pengguna UniKantin**,
> saya ingin **mengamankan akses aplikasi menggunakan PIN 6-digit**,
> agar **data pengeluaran pribadi saya tidak dapat dilihat oleh orang lain**.

**Acceptance Criteria:**

```gherkin
Given aplikasi dalam kondisi terkunci PIN
When  pengguna memasukkan 6-digit PIN yang benar
Then  akses aplikasi diberikan dan halaman utama terbuka
```

---

## US-PRV-03 · Hapus Semua Data Mandiri (Right to Erasure)

**Prioritas:** Must
**Req ID:** PRV-03 / UU PDP Ps. 8

> Sebagai **pengguna aplikasi**,
> saya ingin **menghapus seluruh data transaksi, budget, dan PIN dari perangkat**,
> agar **hak kerahasiaan dan privasi data saya terpenuhi penuh**.

**Acceptance Criteria:**

```gherkin
Given pengguna membuka Pengaturan → Hapus Semua Data
When  pengguna memilih Hapus dan mengonfirmasi dialog
Then  seluruh data di Local Database dan Secure Storage terhapus permanen
  And aplikasi kembali ke kondisi awal (reset)
  And muncul pesan "Seluruh data berhasil dihapus"
```

---

## US-PRV-04 · Ekspor Riwayat Transaksi

**Prioritas:** Should
**Req ID:** PRV-04

> Sebagai **mahasiswa pengguna UniKantin**,
> saya ingin **mengunduh riwayat transaksi dalam format CSV**,
> agar **saya dapat menyimpan cadangan data pribadi di luar aplikasi**.

**Acceptance Criteria:**

```gherkin
Given pengguna membuka Pengaturan → Ekspor Data
When  pengguna mengetuk "Ekspor ke CSV"
Then  file CSV berisi riwayat transaksi dibuat di penyimpanan lokal
  And file siap untuk dibagikan atau disimpan
```

