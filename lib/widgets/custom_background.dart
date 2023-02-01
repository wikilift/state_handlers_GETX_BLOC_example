import 'dart:math';
import 'package:flutter/material.dart';

class CustomBackground extends StatelessWidget {
  const CustomBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          //purple gradient
          decoration: GRADIENT_BK(),
        ),
        //pink box
        const Positioned(top: -100, left: -40, child: _PinkBox())
      ],
    );
  }
}

class _PinkBox extends StatelessWidget {
  const _PinkBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        width: 360,
        height: 360,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80),
          gradient: const LinearGradient(
            colors: [Colors.blueAccent, Color.fromARGB(255, 203, 216, 223)],
          ),
        ),
      ),
    );
  }
}

BoxDecoration GRADIENT_BK() => const BoxDecoration(
    gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Color.fromARGB(255, 240, 240, 240), Color.fromARGB(255, 231, 231, 231)],
        stops: [0.2, 0.8]));
