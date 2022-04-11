import 'package:flutter/material.dart';
import 'package:stockconsole/screens/home/widgets/stocks.dart';
import 'package:stockconsole/screens/placeorder/widgets/stocks.dart';
import 'package:stockconsole/screens/widgets/NavBar.dart';
import 'package:stockconsole/models/stock.dart';

class Order extends StatefulWidget {
  Order({Key? key}) : super(key: key);

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const NavBar()));
            },
          ),
          centerTitle: true,
          title: const Text("Place order"),
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Container(
                  padding: const EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: <Widget>[
                      const Text(
                        "Stocks",
                        style: TextStyle(fontSize: 30),
                      ),
                      const Text(
                        "March 27",
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                          height: MediaQuery.of(context).size.height - 100,
                          child: StockList(stocks: Stock.getAll()))
                    ],
                  ))
            ],
          ),
        ));
  }
}
