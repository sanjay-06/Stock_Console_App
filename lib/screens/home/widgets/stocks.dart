import 'package:flutter/material.dart';

class Stocks extends StatefulWidget {
  const Stocks({Key? key}) : super(key: key);

  @override
  State<Stocks> createState() => _StocksState();
}

class _StocksState extends State<Stocks> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                SizedBox(width: 100, child: Text("1) TCS")),
                Text("QTY: 1"),
                Text("Total :  3705")
              ],
            ),
          ),
          elevation: 8,
          shadowColor: Colors.green,
          margin: const EdgeInsets.all(20),
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.white)),
        ),
        Card(
          child: ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                SizedBox(width: 100, child: Text("2) INFOSYS")),
                Text("QTY: 1"),
                Text("Total :  1896")
              ],
            ),
          ),
          elevation: 8,
          shadowColor: Colors.green,
          margin: const EdgeInsets.all(20),
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.white)),
        ),
        Card(
          child: ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                SizedBox(width: 100, child: Text("3) RELIANCE")),
                Text("QTY: 2"),
                Text("Total :  5236")
              ],
            ),
          ),
          elevation: 8,
          shadowColor: Colors.green,
          margin: const EdgeInsets.all(20),
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.white)),
        ),
        Card(
          child: ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                SizedBox(width: 100, child: Text("4) ITC")),
                Text("QTY: 3"),
                Text("Total :  762")
              ],
            ),
          ),
          elevation: 8,
          shadowColor: Colors.green,
          margin: const EdgeInsets.all(20),
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.white)),
        ),
        Card(
          child: ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                SizedBox(width: 100, child: Text("5) COALINDIA")),
                Text("QTY: 2"),
                Text("Total :  370")
              ],
            ),
          ),
          elevation: 8,
          shadowColor: Colors.green,
          margin: const EdgeInsets.all(20),
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.white)),
        ),
        Card(
          child: ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                SizedBox(width: 100, child: Text("6) NMDC")),
                Text("QTY: 6"),
                Text("Total :  948")
              ],
            ),
          ),
          elevation: 8,
          shadowColor: Colors.green,
          margin: const EdgeInsets.all(20),
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.white)),
        ),
        Card(
          child: ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                SizedBox(width: 100, child: Text("7) IRCTC")),
                Text("QTY: 2"),
                Text("Total :  1534")
              ],
            ),
          ),
          elevation: 8,
          shadowColor: Colors.green,
          margin: const EdgeInsets.all(20),
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.white)),
        ),
      ],
    );
  }
}
