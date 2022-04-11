import 'package:flutter/material.dart';

class AmountText extends StatelessWidget {
  final String text;

  const AmountText(
    this.text, {
    required Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Text(text.toUpperCase(),
          style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent,
              fontSize: 20)),
    );
  }
}
