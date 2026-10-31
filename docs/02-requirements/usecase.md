# Use Case Diagram — UniKantin

```mermaid
flowchart TB
    A([👤 Mahasiswa])

    subgraph sys ["UniKantin System"]
        UC1([Tambah Transaksi])
        UC2([Lihat Ringkasan Transaksi])
        UC3([Atur Batas Anggaran])
        UC4([Verifikasi PIN])
        UC5([Hapus Semua Data])
        UC6([Ekspor Riwayat CSV])
        UC7([Lihat Kebijakan Privasi])
        UC8([Validasi Form Transaksi])
        UC9([Peringatan Overbudget])
    end

    A --> UC1 & UC2 & UC3 & UC4 & UC5 & UC6 & UC7
    UC1 -->|include| UC8
    UC9 -.->|extend| UC2
    UC3 -.->|extend| UC2
```

## Penjelasan Relasi

| Relasi | Jenis | Alasan |
|---|---|---|
| Tambah Transaksi → Validasi Form | `<<include>>` | Form transaksi **selalu** divalidasi sebelum data disimpan ke database lokal. |
| Peringatan Overbudget ↗ Lihat Ringkasan | `<<extend>>` | Peringatan **hanya** muncul jika akumulasi pengeluaran ≥ 80% dari batas anggaran. |
| Atur Batas Anggaran ↗ Lihat Ringkasan | `<<extend>>` | Tampilan ringkasan opsional diperbarui secara dinamis setelah nominal budget baru diset. |