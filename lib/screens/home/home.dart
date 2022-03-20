import 'package:flutter/material.dart';
import 'package:stockconsole/screens/home/widgets/Accountbalance.dart';
import 'package:stockconsole/screens/home/widgets/stocks.dart';
import 'package:stockconsole/screens/widgets/NavBar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => NavBar()));
          },
        ),
        centerTitle: true,
        title: const Text("My Money"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(
              height: 25.0,
            ),
            Accountbalance(),
            SizedBox(
              height: 40.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Divider(
                color: Color.fromRGBO(97, 99, 119, 1),
              ),
            ),
            Stocks(),
            SizedBox(
              height: 25.0,
            ),
          ],
        ),
      ),
    );
  }
}
