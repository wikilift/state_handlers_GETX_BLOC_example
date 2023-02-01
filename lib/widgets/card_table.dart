import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          _SingleCard(
            label: 'Stream bloc',
            color1: Colors.white60,
            color2: Colors.blueAccent,
            icon: Icons.stream,
            onTap: () async {
              Get.toNamed('bloc_pattern');
            },
          ),
          _SingleCard(
            label: 'Bloc pattern',
            color1: Colors.white60,
            color2: Colors.blueAccent,
            icon: Icons.pattern,
            onTap: () async {
              Get.toNamed('pagina1');
            },
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            label: 'Calculator\nBloc',
            color1: Colors.white60,
            color2: Colors.blueAccent,
            icon: Icons.calculate,
            onTap: () {
              Get.toNamed('calc_bloc_patern');
            },
          ),
          _SingleCard(
            label: 'GetX Implementation',
            color1: Colors.white60,
            color2: Colors.blueAccent,
            icon: Icons.auto_awesome,
            onTap: () {
              Get.toNamed('getx_page_one');
            },
          )
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  const _SingleCard(
      {Key? key,
      required this.label,
      required this.icon,
      required this.color1,
      required this.color2,
      required this.onTap})
      : super(key: key);
  final String label;
  final Color color1;
  final Color color2;
  final IconData icon;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: _CardBackground(
          widget: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        CircleAvatar(
            backgroundColor: Colors.transparent, radius: 40, child: Icon(icon, size: 85, color: Colors.black87)),
        const SizedBox(height: 30),
        Text(
          label,
          style: const TextStyle(fontSize: 20, color: Colors.black87, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        )
      ])),
    );
  }
}

class _CardBackground extends StatelessWidget {
  const _CardBackground({Key? key, required this.widget}) : super(key: key);
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    final boxDecoration =
        BoxDecoration(color: const Color.fromARGB(99, 68, 137, 255), borderRadius: BorderRadius.circular(10));

    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: boxDecoration,
            child: widget,
          ),
        ),
      ),
    );
  }
}
/*
 decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80),
          gradient: const LinearGradient(
            colors: [Color.fromRGBO(236, 98, 188, 1), Color.fromRGBO(251, 142, 172, 1)],
          ),
        ),
      ),
*/