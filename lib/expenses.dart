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
    Expense(
      category: Category.leisure,
      title: "Animal",
      price: 225,
      date: DateTime.now(),
    ),
  ];

  void _modalSheet(){
    showModalBottomSheet(
        context: context,
        builder: (ctx)=> const  NewExpense(),
    );
  }
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expense Tracker"),
        actions: [
          IconButton(
              onPressed: _modalSheet,
              icon: const Icon(Icons.add)),
        ],
      ),
      body: Column(
        children: [
          const Text("Chart"),
          Expanded(child: ExpensesList(expenses: _registeredExpenses)),
        ],
      ),
    );
  }
}
