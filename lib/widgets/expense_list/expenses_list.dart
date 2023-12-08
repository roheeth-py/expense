import 'package:expense/model/expenses.dart';
import 'package:flutter/material.dart';
import 'expense_card.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expenses, required this.delExpense});

  final List<Expense> expenses;
  final void Function(Expense) delExpense;
  @override
  Widget build(context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (context, index) => Dismissible(
        key: ValueKey(expenses[index]),
        onDismissed: (direction){
          delExpense(expenses[index]);
        },
        child: ExpenseCard(
          expenses[index],
        ),
      ),
    );
  }
}
