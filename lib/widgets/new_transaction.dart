import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  final Function addTransaction;

  NewTransaction(this.addTransaction);

  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleController = TextEditingController();

  final amountController = TextEditingController();

  void submitData() {
    final titleEntered = titleController.text;
    final amountEntered = double.parse(amountController.text);
    if (titleEntered.isEmpty || amountEntered <= 0) {
      return;
    }
    widget.addTransaction(titleEntered, amountEntered);

    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      elevation: 10,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: "Title"),
              controller: titleController,
              onSubmitted: (_) => submitData(),
//                    onChanged: (val) {
//                      titleInput = val;
//                    },
            ),
            TextField(
              decoration: InputDecoration(labelText: "Amount"),
              controller: amountController,
              keyboardType: TextInputType.numberWithOptions(),
              onSubmitted: (_) => submitData(),
//                    onChanged: (val) {
//                      amountInput = val;
//                    },
            ),
            FlatButton(
                child: Text("Add Transaction"),
                textColor: Colors.purple,
                onPressed: submitData),
          ],
        ),
      ),
    );
  }
}
