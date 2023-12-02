import 'package:flutter/material.dart';

import 'model/expenses.dart';

class ExpenseCard extends StatelessWidget{
  const ExpenseCard(this.expenses,this.index,{super.key});
  final List<Expense> expenses;
  final int index;

  @override
  Widget build(context){
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(expenses[index].title),
      ),
    );
  }
}