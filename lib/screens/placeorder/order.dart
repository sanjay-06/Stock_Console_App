import 'package:flutter/material.dart';
import 'package:stockconsole/screens/widgets/NavBar.dart';

class Order extends StatefulWidget {
  const Order({Key? key}) : super(key: key);

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
    );
  }
}
