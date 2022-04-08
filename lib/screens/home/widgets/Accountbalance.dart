import 'package:flutter/material.dart';

class Accountbalance extends StatefulWidget {
  const Accountbalance({Key? key}) : super(key: key);

  @override
  State<Accountbalance> createState() => _AccountbalanceState();
}

class _AccountbalanceState extends State<Accountbalance> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: <Widget>[
                const Text(
                  "Total Investment",
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
                const SizedBox(height: 15),
                const Text(
                  "\u{20B9}14451.15",
                  style: TextStyle(
                    fontSize: 26.0,
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  children: const [
                    Text(
                      "+0.14%",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 16.0,
                      ),
                    ),
                    Icon(
                      Icons.arrow_upward_rounded,
                      color: Colors.green,
                    ),
                  ],
                )
              ],
            ),
            Column(
              children: [
                const Text(
                  "One day returns",
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
                const SizedBox(height: 15),
                const Text(
                  "\u{20B9}289.02",
                  style: TextStyle(
                    fontSize: 26.0,
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  children: const [
                    Text(
                      "+2.14%",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 16.0,
                      ),
                    ),
                    Icon(
                      Icons.arrow_upward,
                      color: Colors.green,
                    ),
                  ],
                )
              ],
            ),
            Column(
              children: const [
                Text(
                  "Balance",
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
                SizedBox(height: 15),
                Text(
                  "\u{20B9}3000",
                  style: TextStyle(
                    fontSize: 26.0,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  "Available",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
