import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<NewExpense> createState() {
    return _NewExpenseState();
  }
}

class _NewExpenseState extends State<NewExpense> {
  final _titleController = TextEditingController();
  final _priceController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    _titleController.dispose();
    _priceController.dispose();
    super.dispose();
  }

  void _presentDatePicker(){
    final now = DateTime.now();
    final firstDate = DateTime(now.year-1, now.month, now.day);
    showDatePicker(
        context: context,
        initialDate: now,
        firstDate: firstDate,
        lastDate: now,
    );
  }

  // void _enteredTitle(String inputValue){
  //   newTitle = inputValue;
  // }

  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            // onChanged: _enteredTitle,
            controller: _titleController,
            maxLength: 30,
            decoration: const InputDecoration(label: Text("Title")),
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _priceController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    prefixText: "\$",
                    label: Text("Amount"),
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text("Selected Date"),
                    IconButton(
                      onPressed: _presentDatePicker,
                      icon: const Icon(Icons.calendar_month_outlined),
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Cancel"),
              ),
              ElevatedButton(
                onPressed: () {
                  print(_titleController.text);
                  print(_priceController.text);
                },
                child: const Text("Save Changes"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
