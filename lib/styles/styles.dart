import 'package:flutter/material.dart';

abstract class Styles {
  static InputDecoration authDecoration(
          {Color colorBorder = Colors.blueAccent,
          Color colorLabel = Colors.grey,
          IconData? icon,
          IconData? iconSuffix,
          TextOverflow? overflow,
          Color iconColor = Colors.grey,
          double iconSize = 35,
          String? hint,
          required String label}) =>
      InputDecoration(
          label: Text(
            label,
            overflow: (overflow == null) ? null : overflow,
          ),
          alignLabelWithHint: true,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: colorBorder),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: colorBorder, width: 2),
          ),
          hintText: hint,
          suffixIcon: Icon(
            iconSuffix,
            size: iconSize,
            color: iconColor,
          ),
          //labelText: label,
          labelStyle: TextStyle(color: colorLabel, fontSize: 20, fontWeight: FontWeight.bold),
          prefixIcon: icon != null ? Icon(icon, color: colorBorder, size: iconSize) : null);

  static const TextStyle blackTextLittle = TextStyle(
    color: Color.fromRGBO(0, 0, 0, 0.8),
    fontSize: 18,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle drawerText = TextStyle(
    color: Color.fromRGBO(0, 0, 0, 1),
    fontSize: 20,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle blackTextTitle = TextStyle(
    color: Color.fromRGBO(0, 0, 0, 0.8),
    fontSize: 40,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle blueTextTitle = TextStyle(
    color: Color.fromARGB(204, 32, 148, 219),
    fontSize: 20,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle whiteTextTitle = TextStyle(
    color: Colors.white,
    fontSize: 18,
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle whiteTextBig = TextStyle(
    color: Colors.white,
    fontSize: 30,
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle displayDigit = TextStyle(
      color: Colors.white,
      fontSize: 60,
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.bold,
      shadows: [BoxShadow(color: Colors.white54, offset: Offset(1, 0.5), blurRadius: 5)]);

  static const TextStyle headerSplash = TextStyle(
    color: Colors.white,
    fontSize: 35,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle appBarText = TextStyle(
    color: Color.fromARGB(255, 250, 250, 250),
    fontSize: 25,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.normal,
  );

  static const boxBlurDecoration = BoxDecoration(boxShadow: [
    BoxShadow(
      color: Colors.black38,
      offset: Offset(
        0.0,
        0.0,
      ),
      blurRadius: 10.0,
      spreadRadius: 2.0,
    ), //BoxShadow
    BoxShadow(
      color: Colors.white,
      offset: Offset(0.0, 0.0),
      blurRadius: 0.0,
      spreadRadius: 0.0,
    ), //BoxShadow
  ]);
}
