import 'package:flutter/material.dart';
import 'package:expense/model/expenses.dart';

class ExpenseMain extends StatefulWidget{
  const ExpenseMain({super.key});

  @override
  State<ExpenseMain> createState(){
    return _ExpenseMainState();
  }
}

class _ExpenseMainState extends State<ExpenseMain>{

  
  @override
  Widget build(context){
    return Scaffold(
      appBar: AppBar(),
      body: const Column(
        children: [
          Text("Chart"),
          Text("Expense List..."),
        ],
      ),
    );
  }
}