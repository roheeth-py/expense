import 'package:flutter/material.dart';
import 'package:expense/expenses.dart';

void main(){
  runApp(
    MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const ExpenseMain(),
    ),
  );
}