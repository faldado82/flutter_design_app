import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(
          children: [
            _SingleCard(
                color: Colors.blue,
                icon: Icons.access_alarm_outlined,
                text: 'Cronometro'),
            _SingleCard(
                color: Colors.red, icon: Icons.safety_check, text: 'Seguridad'),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
                color: Colors.green,
                icon: Icons.three_p_outlined,
                text: 'Comunicarse'),
            _SingleCard(
                color: Colors.orange, icon: Icons.dashboard, text: 'Tareas'),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
                color: Colors.yellow,
                icon: Icons.remove_red_eye_outlined,
                text: 'Mirar'),
            _SingleCard(
                color: Colors.purple, icon: Icons.equalizer, text: 'Graficos'),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
                color: Colors.blueAccent,
                icon: Icons.shopping_cart_checkout,
                text: 'Comprar'),
            _SingleCard(
                color: Color.fromARGB(255, 34, 71, 36),
                icon: Icons.eco,
                text: 'Reciclar'),
          ],
        ),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard(
      {required this.icon, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return _CardBackground(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: color,
          radius: 30,
          child: Icon(icon, size: 32, color: Colors.black54),
        ),
        const SizedBox(height: 22),
        Text(
          text,
          style: const TextStyle(fontSize: 15, color: Colors.white60),
        )
      ],
    ));
  }
}

class _CardBackground extends StatelessWidget {
  final Widget child;

  const _CardBackground({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 160,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(62, 66, 107, 0.7),
              //borderRadius: BorderRadius.circular(20),
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
