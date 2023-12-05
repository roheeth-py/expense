import 'package:expense/model/expenses.dart';
import 'package:flutter/material.dart';

import 'expense_card.dart';

class ExpensesList extends StatelessWidget{
  const ExpensesList({super.key, required this.expenses});

  final List<Expense> expenses;
  @override
  Widget build(context){
    return ListView.builder(itemCount:expenses.length , itemBuilder: (context, index) => ExpenseCard(expenses[index]));
  }
}