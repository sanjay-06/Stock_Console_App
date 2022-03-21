import 'package:flutter/material.dart';
import 'package:stockconsole/screens/login.dart';

void main() {
  runApp(const StockConsole());
}

class StockConsole extends StatelessWidget {
  const StockConsole({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stock Console',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const Login(),
    );
  }
}
