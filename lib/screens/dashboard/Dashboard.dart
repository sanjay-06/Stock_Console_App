import 'package:flutter/material.dart';
import 'package:stockconsole/screens/widgets/NavBar.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
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
        title: const Text("Dashboard"),
      ),
    );
  }
}
