import 'package:flutter/material.dart';

class MainResultText extends StatelessWidget {
  final String text;

  const MainResultText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        width: double.infinity,
        alignment: Alignment.centerRight,
        child: Text(text, style: const TextStyle(fontSize: 50)),
      ),
    );
  }
}
