import 'package:expense_planner/widgets/user_transaction.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() => runApp(ExpensePlanner());

class ExpensePlanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expense Planner',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  final titleController = TextEditingController();
  final amountController = TextEditingController();
//  String titleInput;
//  String amountInput;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expense Planner'),
      ),
      body: Column(
//        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.deepOrange,
              child: Text('CHART!'),
              elevation: 10,
            ),
          ),
          UserTransaction()
        ],
      ),
    );
  }
}
