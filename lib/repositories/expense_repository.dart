class Expense {
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final String category;

  Expense({
    required this.id,
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  });
}

/// Kontrak akses data pengeluaran/transaksi kantin.
/// UI tidak boleh memanggil Firebase atau storage secara langsung.
abstract class ExpenseRepository {
  /// Mengambil seluruh daftar transaksi
  Future<List<Expense>> getAll();

  /// Menambahkan transaksi baru
  Future<void> add(Expense expense);

  /// Memperbarui data transaksi
  Future<void> update(Expense expense);

  /// Menghapus satu transaksi berdasarkan ID
  Future<void> remove(String id);

  /// Menghapus seluruh data transaksi (Kepatuhan UU PDP Ps. 8 / PRV-03)
  Future<void> clear();
}