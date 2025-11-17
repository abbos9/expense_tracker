import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  @override
  State<NewExpense> createState() {
    return _NewExpenseState();
  }
}

class _NewExpenseState extends State<NewExpense> {
  final _titleController = TextEditingController();
  final _moneyController = TextEditingController();
  
  @override
  void dispose() {
    _titleController.dispose();
    _moneyController.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: _titleController,
            maxLength: 50,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(label: Text("Title")),
          ),
          TextField(
            controller: _moneyController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(prefixText: "\$",label: Text("Amount Money Spent")),
          ),
          Row(
            children: [
              TextButton(onPressed: (){
                Navigator.pop(context);
              }, child: const Text("Cancel")),
              ElevatedButton(onPressed: (){ print("\n ${_moneyController.text} was spent on ${_titleController.text}");}, child: Text("Save Expense"))
            ],
          ),
        ],
      ),
    );
  }
}
