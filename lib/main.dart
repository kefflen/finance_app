
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

main() => runApp(const ExpensiveApp());

class ExpensiveApp extends StatelessWidget {
  const ExpensiveApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage()
    );
  } 
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Projeto inicial')
      ),
      body: Column(
        children: <Widget>[
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
            child: const Card(
              color: Colors.indigo,
              elevation: 5,
              child: Text('Lista de transações', style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      )
    );
  }
}