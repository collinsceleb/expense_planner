import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTransaction;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTransaction);

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
//                    onChanged: (val) {
//                      titleInput = val;
//                    },
            ),
            TextField(
              decoration: InputDecoration(labelText: "Amount"),
              controller: amountController,
//                    onChanged: (val) {
//                      amountInput = val;
//                    },
            ),
            FlatButton(
              child: Text("Add Transaction"),
              textColor: Colors.purple,
              onPressed: () {
                addTransaction(
                    titleController.text, double.parse(amountController.text));
              },
            )
          ],
        ),
      ),
    );
  }
}
