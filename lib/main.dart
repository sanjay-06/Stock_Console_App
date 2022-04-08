import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:stockconsole/firebase_options.dart';
import 'package:stockconsole/screens/login.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const StockConsole());
}

class StockConsole extends StatelessWidget {
  const StockConsole({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stock Console',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const Login(),
    );
  }
}
