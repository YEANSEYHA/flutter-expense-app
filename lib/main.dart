import './widgets/user_transaction.dart';

import './widgets/new_transaction.dart';
import 'package:flutter/material.dart';
import './widgets/transaction_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  /* String titleInput = 'Hello';
  String amountInput = 'Hello12'; */
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body:  Container(
        height: 1000,
        child: SingleChildScrollView(
          child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    child: Card(
                      child: Text('CHART!'),
                      elevation: 5,
                    ),
                    color: Colors.blue,
                  ),
                  UserTransactions()
                ]),
        ),
      ),
    );
  }
}
