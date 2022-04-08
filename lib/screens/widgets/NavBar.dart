import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../dashboard/Dashboard.dart';
import '../home/home.dart';
import '../login.dart';
import '../news/stocknews.dart';
import '../placeorder/order.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  User? user = FirebaseAuth.instance.currentUser;
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
            accountName: const Text(''),
            accountEmail: Text('Hello ${user!.email} !'),
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
            title: const Text('Market Overview'),
            // ignore: avoid_returning_null_for_void
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Dashboard()))
            },
          ),
          ListTile(
            leading: const Icon(Icons.shopping_bag),
            title: const Text('Place order'),
            // ignore: avoid_returning_null_for_void
            onTap: () => {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Order()))
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
            leading: const Icon(Icons.satellite_outlined),
            title: const Text('News'),
            // ignore: avoid_returning_null_for_void
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Stocknews()))
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('Exit'),
            leading: const Icon(Icons.exit_to_app),
            onTap: () => {logout(context)},
          ),
        ],
      ),
    );
  }

  Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const Login()));
  }
}
