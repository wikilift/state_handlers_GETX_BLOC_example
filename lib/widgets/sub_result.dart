import 'package:flutter/material.dart';

class SubResult extends StatelessWidget {
  final String text;

  const SubResult({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.centerRight,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(this.text, style: TextStyle(fontSize: 30)),
      ),
    );
  }
}
