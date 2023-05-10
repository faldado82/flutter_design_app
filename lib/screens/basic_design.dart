import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: const [
        // Imagen
        Image(image: AssetImage('assets/landscape.png')),

        // Titulo
        Title(),

        // Botones
        ButtonSection(),
      ]),
    );
  }
}


// Widget Titulo 
class Title extends StatelessWidget {
  const Title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Row(
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: const [
            Text('Oeschinen Lake Campground',
                style: TextStyle(fontWeight: FontWeight.bold)),
            Text('Kandersteg, Switzerland',
                style: TextStyle(color: Colors.black45)),
          ]),
          Expanded(child: Container()), // para agregar espacio en blanco
          const Icon(Icons.star, color: Colors.red),
          const Text('41'),
        ],
      ),
    );
  }
}


// Widget Botones
class ButtonSection extends StatelessWidget {
  const ButtonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: const [
              Icon(
                Icons.phone,
                color: Colors.blue,
              ),
              Text(
                'CALL',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          Column(
            children: const [
              Icon(
                Icons.room_outlined,
                color: Colors.blue,
              ),
              Text(
                'ROUTE',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          Column(
            children: const [
              Icon(
                Icons.share,
                color: Colors.blue,
              ),
              Text(
                'SHARE',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
