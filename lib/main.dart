
import 'package:finance_app/models/transactions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

main() => runApp(const ExpensiveApp());

class ExpensiveApp extends StatelessWidget {
  const ExpensiveApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage()
    );
  } 
}

class MyHomePage extends StatelessWidget {
  MyHomePage({ Key? key }) : super(key: key);
  
  final _transactions = [
    Transaction(id: 't1', title: 'Whopper', value: 19, date: DateTime.now()),
    Transaction(id: 't2', title: 'Refrigerante', value: 7, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Projeto inicial')
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: double.infinity,
            child: const Card(
              color: Colors.indigo,
              elevation: 5,
              child: Text('Grafico', style: TextStyle(color: Colors.white)),
            ),
          ),
          Container(
            width: double.infinity,
            child: Column(
              children: _transactions.map((transaction) {
                  return Card(
                    child: Row(
                      children: [
                        Container(
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.purple, width: 2) 
                            ),
                            child: Text(
                              'R\$ ${transaction.value.toStringAsFixed(2)}',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.purple
                              ),
                            )
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(transaction.title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                            Text(transaction.date.toString(), style: TextStyle(color: Colors.grey),)
                          ],
                        )
                      ],
                    ),
                  );
                }).toList()
            ) 
          ),
        ],
      )
    );
  }
}