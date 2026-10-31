# Traceability Matrix — UniKantin

**Versi:** 1.0  
**Tanggal:** 31 Oktober 2026

---

## Tabel 1: Kebutuhan Fungsional

| ID FR | Deskripsi Singkat | User Story | Use Case | Layar (Figma) | Status M04 | Test ID |
|---|---|---|---|---|---|---|
| FR-01 | Catat transaksi pengeluaran (nama, nominal, kategori, tanggal) | US-01 | UC-1 | AddExpenseScreen | Belum | T-01 |
| FR-02 | Tampilkan daftar & ringkasan pengeluaran bulanan per kategori | US-02 | UC-2 | HomeScreen | Belum | T-02 |
| FR-03 | Atur & simpan batas anggaran bulanan (Budget Guard) | US-03 | UC-3 | SettingsScreen | Belum | T-03 |
| FR-04 | Verifikasi PIN berbasis PBKDF2 HMAC-SHA256 | US-04 | UC-4 | PinScreen | Belum | T-04 |
| FR-05 | Hapus semua data pengguna (Right to Erasure UU PDP) | US-PRV-03 | UC-5 | SettingsScreen | Belum | T-05 |
| FR-06 | Ekspor seluruh riwayat transaksi ke format CSV | US-PRV-04 | UC-6 | SettingsScreen | Belum | T-06 |

> *Catatan:* Kolom "Layar (Figma)" akan dikonfirmasi pada M03, dan kolom "Status M04" / "Test ID" akan diverifikasi pada M04.

---

## Tabel 2: Kebutuhan Non-Fungsional Kritis

| ID NFR | Kategori | Deskripsi | Cara Verifikasi | Berlaku di | Status |
|---|---|---|---|---|---|
| PRV-01 | Privasi | Data 100% tersimpan di perangkat lokal (Offline-First) | Code review: Nirkoneksi HTTP | M04 | Belum |
| PRV-03 | Privasi | Hapus semua data ≤ 2 ketukan + dialog konfirmasi | Uji manual: Settings → Hapus | M04 | Belum |
| PRV-04 | Privasi | Ekspor riwayat pengeluaran dalam format CSV | Uji manual: File CSV ter-generate | M04 | Belum |
| SEC-01 | Keamanan | Budget & PIN hash disimpan di `flutter_secure_storage` | Code review SecureStorageService | ✅ M01 | Selesai |
| SEC-02 | Keamanan | PIN menggunakan PBKDF2 HMAC-SHA256 + 16-byte salt | Code review PinService | ✅ M01 | Selesai |
| UX-01 | UX | Waktu respons simpan transaksi lokal < 100ms | Profiling di emulator | M04 | Belum |
| UX-03 | UX | Pesan error validasi jelas saat nominal 0 / kategori kosong | Uji manual: Submit form kosong | M04 | Belum |

---

## Tabel 3: Sequence Diagram → Method Dart

| Skenario | Pesan dalam Diagram | Method Dart yang Akan Dibuat | Berkas Target M04 |
|---|---|---|---|
| Skenario 1 | `SC ->> P : addExpense(expense)` | `ExpenseProvider.addExpense()` | `lib/providers/expense_provider.dart` |
| Skenario 1 | `P ->> R : add(expense)` | `InMemoryExpenseRepository.add()` | `lib/repositories/in_memory_expense_repository.dart` |
| Skenario 1 | `P ->> P : notifyListeners()` | Dipanggil setelah setiap mutasi data | `lib/providers/expense_provider.dart` |
| Skenario 2 | `D ->> P : clearAll()` | `ExpenseProvider.clearAll()` | `lib/providers/expense_provider.dart` |
| Skenario 2 | `P ->> R : clear()` | `InMemoryExpenseRepository.clear()` | `lib/repositories/in_memory_expense_repository.dart` |
| Skenario 2 | `P ->> SC : clearAll()` | `SecureStorageService.clearAll()` | `lib/services/secure_storage_service.dart` |