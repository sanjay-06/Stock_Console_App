import 'package:flutter/material.dart';
import 'package:stockconsole/screens/dashboard/Dashboard.dart';
import 'package:stockconsole/screens/home/home.dart';
import 'package:stockconsole/screens/login.dart';
import 'package:stockconsole/screens/placeorder/order.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          AppBar(
            backgroundColor: Colors.red,
            elevation: 0,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          UserAccountsDrawerHeader(
            accountName: const Text('Oflutter.com'),
            accountEmail: const Text('example@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  'images/user.jpg',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.dashboard),
            title: const Text('Dashboard'),
            // ignore: avoid_returning_null_for_void
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Dashboard()))
            },
          ),
          ListTile(
            leading: const Icon(Icons.desktop_mac),
            title: const Text('Portfolio'),
            // ignore: avoid_returning_null_for_void
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Home()))
            },
          ),
          ListTile(
            leading: const Icon(Icons.shopping_bag),
            title: const Text('Place order'),
            // ignore: avoid_returning_null_for_void
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Order()))
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('Exit'),
            leading: const Icon(Icons.exit_to_app),
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Login()))
            },
          ),
        ],
      ),
    );
  }
}
