import 'package:flutter/material.dart';

import '../../model/expenses.dart';

class ExpenseCard extends StatelessWidget {
  const ExpenseCard(this.expense, {super.key});
  final Expense expense;

  @override
  Widget build(context) {
    return Card(
      margin: EdgeInsets.fromLTRB(15, 10, 15, 10),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(expense.title),
            SizedBox(height: 5,),
            Row(
              children: [
                Text(expense.price.toStringAsFixed(2)),
                Spacer(),
                Icon(categoryIcon[expense.category]),
                SizedBox(width: 5,),
                Text(expense.formattedDate),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
