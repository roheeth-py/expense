import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();

const uuid = Uuid();

enum Category {food, travel, leisure, work}

final categoryIcon = {
  Category.food: Icons.lunch_dining_rounded,
  Category.travel: Icons.flight_takeoff_rounded,
  Category.leisure: Icons.movie,
  Category.work: Icons.work
};

class Expense{
  Expense({required this.category, required this.title, required this.price, required this.date}) : id = uuid.v4();

  final String id;
  final String title;
  final double price;
  final DateTime date;
  final Category category;

  String get formattedDate {
    return formatter.format(date);
  }
}