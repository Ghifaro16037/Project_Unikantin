# Class Diagram — UniKantin

```mermaid
classDiagram
    class ExpenseItem {
        +String id
        +String namaItem
        +double nominal
        +ExpenseCategory kategori
        +DateTime tanggal
        +fromJson(Map) ExpenseItem$
        +toJson() Map
    }
    class ExpenseCategory {
        <<enumeration>>
        MAKANAN
        MINUMAN
        CAMILAN
        LAINNYA
    }
    class ExpenseRepository {
        <<interface>>
        +getAll() Future~List~ExpenseItem~~
        +add(ExpenseItem) Future~void~
        +update(ExpenseItem) Future~void~
        +remove(String) Future~void~
        +clear() Future~void~
    }
    class ExpenseProvider {
        -ExpenseRepository _repo
        -List~ExpenseItem~ _expenses
        -double _monthlyBudget
        +addExpense(ExpenseItem) Future~void~
        +setBudget(double) Future~void~
        +clearAll() Future~void~
        +notifyListeners() void
    }
    ExpenseItem --> ExpenseCategory
    ExpenseProvider --> ExpenseRepository
```

## Komponen Struktur Data

| Nama Class / Enum | Peran / Deskripsi | File Target M04 |
|---|---|---|
| `ExpenseItem` | Entitas model data transaksi pengeluaran kantin | `lib/models/expense_item.dart` |
| `ExpenseCategory` | Enum kategori pengeluaran (Makanan, Minuman, Camilan, Lainnya) | `lib/models/expense_category.dart` |
| `ExpenseRepository` | Interface abstraksi akses penyimpanan lokal (SQLite/Memory) | `lib/repositories/expense_repository.dart` |
| `ExpenseProvider` | State management (extends `ChangeNotifier`) pengelola UI state | `lib/providers/expense_provider.dart` |