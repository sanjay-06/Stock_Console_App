import 'dart:html';

import 'package:flutter/material.dart';
import 'package:stockconsole/models/stock.dart';
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  Column(
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                          primary: Colors.green,
                        ),
                        onPressed: () {},
                        child:
                            const Text('Buy', style: TextStyle(fontSize: 20)),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                          primary: Colors.red,
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Sell",
                          style: TextStyle(fontSize: 20),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                          primary: Colors.blue,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Stockchart(
                                      title: stock.company,
                                      price: stock.price)));
                        },
                        child: const Text(
                          "View Chart",
                          style: TextStyle(fontSize: 15),
                        ),
                      )
                    ],
                  )
                ]),
          );
        },
        itemCount: stocks.length);
  }
}
