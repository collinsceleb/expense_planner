import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTransaction;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTransaction);

  void submitData() {
    final titleEntered = titleController.text;
    final amountEntered = double.parse(amountController.text);
    if(titleEntered.isEmpty || amountEntered <= 0) {
      return;
    }
    addTransaction(titleEntered, amountEntered);
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
