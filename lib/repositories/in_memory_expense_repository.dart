import 'expense_repository.dart';

/// Implementasi dummy/sementara penyimpanan berbasis memori (In-Memory).
class InMemoryExpenseRepository implements ExpenseRepository {
  final Map<String, Expense> _items = {};

  @override
  Future<List<Expense>> getAll() async {
    return _items.values.toList();
  }

  @override
  Future<void> add(Expense expense) async {
    _items[expense.id] = expense;
  }

  @override
  Future<void> update(Expense expense) async {
    _items[expense.id] = expense;
  }

  @override
  Future<void> remove(String id) async {
    _items.remove(id);
  }

  @override
  Future<void> clear() async {
    _items.clear();
  }
}