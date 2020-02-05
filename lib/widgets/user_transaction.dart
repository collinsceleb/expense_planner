import 'package:flutter/material.dart';
import 'package:expense_planner/widgets/new_transaction.dart';
import 'package:expense_planner/widgets/transaction_list.dart';
import 'package:expense_planner/models/transaction.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
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

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[NewTransaction(_addNewTransaction), TransactionList(_userTransactions)],
    );
  }
}
