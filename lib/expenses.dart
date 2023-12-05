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
  final List<Expense> _registeredExpenses = [
    Expense(
      category: Category.food,
      title: "Biryani",
      price: 100,
      date: DateTime.now(),
    ),
    Expense(
        category: Category.work,
        title: "petrol",
        price: 200,
        date: DateTime.now(),
    ),
    Expense(category: Category.work, title: "S", price: 50.5, date: DateTime.now(),
    ),
  ];
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Text("Chart"),
          Expanded(child: ExpensesList(expenses: _registeredExpenses)),
        ],
      ),
    );
  }
}
