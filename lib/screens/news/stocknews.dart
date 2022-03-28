import 'package:flutter/material.dart';
import 'package:stockconsole/screens/widgets/NavBar.dart';

class Stocknews extends StatefulWidget {
  const Stocknews({Key? key}) : super(key: key);

  @override
  State<Stocknews> createState() => _StocknewsState();
}

class _StocknewsState extends State<Stocknews> {
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
        title: const Text("Stock News"),
      ),
      // body:
    );
  }
}
