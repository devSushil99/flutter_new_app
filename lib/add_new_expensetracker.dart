import 'package:flutter/material.dart';

class AddNewExpensetracker extends StatelessWidget {
  const AddNewExpensetracker({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
        title: const Text(" New Expense Tracker"),
        centerTitle: true,
        actions: [TextButton(onPressed: () {}, child: const Text("Reset"))],
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // for 1st 2 buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 48,
                width: MediaQuery.of(context).size.width * 0.4,
                color: Colors.red,
                child: Center(
                  child: Text(
                    "Expense",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                height: 48,
                width: MediaQuery.of(context).size.width * 0.4,
                color: Colors.blue,
                child: Center(
                  child: const Text(
                    "Income",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),

          // for 2nd 2 empty rows
          SizedBox(height: 32),
          // Amount input field
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.currency_rupee),
              ),
              SizedBox(width: 30),

              Column(
                children: [
                  Text(
                    "Total Amount",
                    style: TextStyle(fontSize: 30, color: Colors.grey),
                  ),

                  Text(
                    "0.00",
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
          Row(),
        ],
      ),

      // footer button
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        height: 56,
        width: 300,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 234, 4, 238),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            SizedBox(width: 8),
            Text("Save Expense"),
            Icon(Icons.check),
          ],
        ),
      ),
    );
  }
}
