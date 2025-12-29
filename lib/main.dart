import 'package:flutter/material.dart';
import 'package:flutter_application_1/add_new_expensetracker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Expense Tracker App",
      debugShowCheckedModeBanner: false,
      home: const AddNewExpensetracker(),
    );
  }
}
