import 'package:flutter/material.dart';

class Stocks extends StatefulWidget {
  const Stocks({Key? key}) : super(key: key);

  @override
  State<Stocks> createState() => _StocksState();
}

class _StocksState extends State<Stocks> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: (const Text(
      "stocks",
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    )));
  }
}
