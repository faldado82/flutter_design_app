import 'dart:math';

import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final boxDecoration = const BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0.2, 0.8],
      colors: [Color(0xff2e305f), Color(0xff202333)],
    ),
  );

  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Fondo de Gradiente Oscuro
        Container(decoration: boxDecoration),

        //Pink Box
        const Positioned(top: -90, left: -20, child: _PinkBox()),
      ],
    );
  }
}

class _PinkBox extends StatelessWidget {
  const _PinkBox();

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -pi / 5,
      child: Container(
        width: 300,
        height: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80),
          gradient: const LinearGradient(colors: [
            Color.fromRGBO(236, 98, 188, 1),
            Color.fromRGBO(251, 142, 172, 1),
          ]),
        ),
      ),
    );
  }
}
