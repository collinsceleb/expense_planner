import 'package:expense_planner/widgets/new_transaction.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:expense_planner/models/transaction.dart';
import 'package:expense_planner/widgets/transaction_list.dart';

void main() => runApp(ExpensePlanner());

class ExpensePlanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personal Expense',
      theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.brown,
          fontFamily: 'OpenSans',
          appBarTheme:
              AppBarTheme(
                  textTheme: ThemeData.light().textTheme.copyWith(
                    title: TextStyle(
                      fontFamily: 'OpenSans',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ))),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 'sa',
      title: 'New Shoes',
      amount: 78.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 'sb',
      title: 'New Blazers',
      amount: 780.99,
      date: DateTime.now(),
    ),
  ];

  void _addNewTransaction(String transactionTitle, double transactionAmount) {
    final newTransaction = Transaction(
        title: transactionTitle,
        amount: transactionAmount,
        date: DateTime.now(),
        id: DateTime.now().toString());

    setState(() {
      _userTransactions.add(newTransaction);
    });
  }

  void _processAddNewTransaction(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (_) {
          return GestureDetector(
            child: NewTransaction(_addNewTransaction),
            onTap: () {},
            behavior: HitTestBehavior.opaque,
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personal Expense'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.add),
              onPressed: () => _processAddNewTransaction(context))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
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
            TransactionList(_userTransactions)
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _processAddNewTransaction(context),
      ),
    );
  }
}
