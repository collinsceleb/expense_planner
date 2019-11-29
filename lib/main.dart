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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expense Planner'),
      ),
      body: Column(
        children: <Widget>[
          Card(
            child: Container(width: 100, child: Text('CHART!')),
            elevation: 5,
          ),
          Card(
            child: Text('LIST OF TX'),
          )
        ],
      ),
    );
  }
}
