import 'package:expense/add_expense.dart';
import 'package:flutter/material.dart';
import 'package:expense/widgets/expense_list/expenses_list.dart';
import 'package:expense/model/expenses.dart';

class ExpenseMain extends StatefulWidget {
  const ExpenseMain({super.key});

  @override
  State<ExpenseMain> createState() {
    return _ExpenseMainState();
  }
}

class _ExpenseMainState extends State<ExpenseMain> {
  final List<Expense> _registeredExpenses = [];

  void _modalSheet() {
    showModalBottomSheet(
      useSafeArea: true,
      isScrollControlled: true,
      context: context,
      builder: (ctx) => NewExpense(_addExpense),
    );
  }

  void _addExpense(Expense expense) {
    setState(() {
      _registeredExpenses.add(expense);
    });
  }

  void _removeExpense(Expense expense) {
    int expenseIndex = _registeredExpenses.indexOf(expense);
    setState(() {
      _registeredExpenses.remove(expense);
    });
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 3),
        content: const Text("Expense Removed"),
        action: SnackBarAction(
            label: "Undo",
            onPressed: (){
              setState(() {
                _registeredExpenses.insert(expenseIndex, expense);
              });
            },
        ),
      ),
    );
  }
//flutter run ==enable-impeller
  @override
  Widget build(context) {
    Widget mainContent = const Center(
      child: Text("No records found!"),
    );
    if (_registeredExpenses.isNotEmpty) {
      mainContent = Expanded(
        child: ExpensesList(
          expenses: _registeredExpenses,
          delExpense: _removeExpense,
        ),
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expense Tracker"),
        actions: [
          IconButton(
            onPressed: _modalSheet,
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Column(
        children: [
          const Text("Chart"),
          mainContent,
        ],
      ),
    );
  }
}
