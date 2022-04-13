import 'package:flutter/material.dart';
import 'package:stockconsole/models/stock.dart';
import 'package:stockconsole/screens/purchase/Sell.dart';
import 'package:stockconsole/screens/purchase/purchase.dart';
import 'package:stockconsole/screens/chartview/stockchart.dart';

class StockList extends StatelessWidget {
  final List<Stock> stocks;

  // ignore: use_key_in_widget_constructors
  const StockList({required this.stocks});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        separatorBuilder: (context, index) {
          return const Divider();
        },
        itemBuilder: (context, index) {
          final stock = stocks[index];

          return ListTile(
            contentPadding: const EdgeInsets.all(10),
            title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 130,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(stock.company,
                              style: const TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.w500)),
                          Text(stock.symbol,
                              style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500)),
                        ]),
                  ),
                  Column(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(stock.price.toString(),
                          style: const TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500)),
                      const SizedBox(height: 3),
                      if (stock.sign == "+")
                        Container(
                          width: 100,
                          child: Text(stock.sign + stock.per.toString() + "%",
                              style: const TextStyle(color: Colors.white)),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular((5)),
                              color: Colors.green),
                        ),
                      if (stock.sign == "-")
                        Container(
                          width: 100,
                          child: Text(stock.sign + stock.per.toString() + "%",
                              style: const TextStyle(color: Colors.white)),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular((5)),
                              color: Colors.red),
                        ),
                    ],
                  ),
                  Theme(
                    data: Theme.of(context).copyWith(
                        textTheme:
                            const TextTheme().apply(bodyColor: Colors.black),
                        dividerColor: Colors.white,
                        iconTheme: const IconThemeData(color: Colors.black)),
                    child: PopupMenuButton<int>(
                      itemBuilder: (context) => [
                        const PopupMenuItem<int>(
                          value: 0,
                          child: Text('Buy',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.green)),
                        ),
                        const PopupMenuItem<int>(
                            value: 1,
                            child: Text(
                              "Sell",
                              style: TextStyle(fontSize: 20, color: Colors.red),
                            )),
                        const PopupMenuDivider(),
                        const PopupMenuItem<int>(
                            value: 2,
                            child: Text(
                              "View Chart",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.blue),
                            )),
                      ],
                      onSelected: (item) => SelectedItem(context, item, stock),
                    ),
                  ),
                ]),
          );
        },
        itemCount: stocks.length);
  }

  // ignore: non_constant_identifier_names
  void SelectedItem(BuildContext context, item, stock) {
    switch (item) {
      case 0:
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    Purchase(title: stock.company, price: stock.price)));
        break;
      case 1:
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    Sell(title: stock.company, price: stock.price)));
        break;
      case 2:
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    Stockchart(title: stock.company, price: stock.price)));
        break;
    }
  }
}
