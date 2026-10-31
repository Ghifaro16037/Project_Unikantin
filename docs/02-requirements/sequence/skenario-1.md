# Sequence Diagram — Skenario 1: Tambah Transaksi Sukses

**Topik:** UniKantin  
**Skenario:** Happy path — Pengguna berhasil mencatat pengeluaran kantin  
**Requirement:** FR-01, US-01

```mermaid
sequenceDiagram
    actor U  as Mahasiswa
    participant SC as AddExpenseScreen
    participant P  as ExpenseProvider
    participant R  as InMemoryExpenseRepository

    Note over U,R: Skenario 1 — Catat Transaksi Pengeluaran

    U  ->> SC : Isi nama "Nasi Goreng", nominal Rp15.000, pilih Makanan, ketuk Simpan
    SC ->> SC : _formKey.currentState!.validate()

    alt Form Valid (Nominal > 0 dan Kategori Terpilih)
        SC ->> P  : addExpense(expense)
        activate P
        P  ->> R  : add(expense)
        R -->> P  : Future~void~ resolved
        P  ->> P  : notifyListeners()
        deactivate P
        P -->> SC : Consumer rebuild UI
        SC -->> U : SnackBar "Tersimpan!" + Navigasi ke HomeScreen
    else Form Tidak Valid
        SC -->> U : Tampilkan pesan error validasi di bawah input
    end
```

## Analisis Relasi Diagram → Kode

| Pesan dalam Diagram | Method Dart yang Akan Dibuat | File Target M04 |
|---|---|---|
| `SC ->> P : addExpense(expense)` | `ExpenseProvider.addExpense()` | `lib/providers/expense_provider.dart` |
| `P ->> R : add(expense)` | `InMemoryExpenseRepository.add()` | `lib/repositories/in_memory_expense_repository.dart` |
| `P ->> P : notifyListeners()` | Dipanggil setelah mutasi state data | `lib/providers/expense_provider.dart` |