# Sequence Diagram — Skenario 2: Hapus Semua Data Mandiri (PRV-03)

**Topik:** UniKantin  
**Skenario:** Privasi — Pengguna mengeksekusi hak penghapusan data (UU PDP Ps. 8)  
**Requirement:** PRV-03, FR-05

```mermaid
sequenceDiagram
    actor U  as Mahasiswa
    participant SS as SettingsScreen
    participant D  as ConfirmDialog
    participant P  as ExpenseProvider
    participant R  as InMemoryExpenseRepository
    participant SC as SecureStorageService

    Note over U,SC: Skenario 2 — Right to Erasure (PRV-03)

    U  ->> SS : Ketuk "Hapus Semua Data"
    SS ->> D  : showDialog(context)
    D -->> U  : "Semua data transaksi, budget, dan PIN akan dihapus permanen. Lanjutkan?"

    alt Pengguna Konfirmasi (Ketuk Hapus)
        D  ->> P  : clearAll()
        activate P
        P  ->> R  : clear()
        R -->> P  : Future~void~ (Clear Database)
        P  ->> SC : clearAll()
        Note right of SC: Hapus budget + PIN hash dari Keystore
        SC -->> P  : Future~void~
        P  ->> P  : notifyListeners()
        deactivate P
        P -->> SS : Rebuild UI (Daftar kosong & reset state)
        SS -->> U : SnackBar "Semua data berhasil dihapus"
    else Pengguna Batal
        D -->> SS : Navigator.pop()
        SS -->> U : Tidak ada perubahan data
    end
```

## Catatan Keamanan / Privasi
- **PRV-03 (Right to Erasure):** Perintah `clearAll()` membersihkan data secara atomik dari dua tempat penyimpanan lokal sekaligus: `InMemoryExpenseRepository` (database transaksi) dan `SecureStorageService` (kredensial PIN hash & budget).