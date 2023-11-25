import 'package:uuid/uuid.dart';

const uuid = Uuid();

enum Category {food, travel, leisure, work}

class Expense{
  Expense({required this.category, required this.title, required this.price, required this.date}) : id = uuid.v4();

  final String id;
  final String title;
  final double price;
  final DateTime date;
  final Category category;
}