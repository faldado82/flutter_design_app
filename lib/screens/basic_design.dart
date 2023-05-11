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

        // Descripcion
        DescriptionSection()
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
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
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
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          CustomButton(icon: Icons.phone, text: 'CALL'),
          CustomButton(icon: Icons.room, text: 'ROUTE'),
          CustomButton(icon: Icons.share, text: 'SHARE'),
        ],
      ),
    );
  }
}

// Widget CustomButton
class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const CustomButton({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
        ),
        const SizedBox(height: 5),
        Text(
          text,
          style: const TextStyle(
            color: Colors.blue,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}

// Widget Description Section
class DescriptionSection extends StatelessWidget {
  const DescriptionSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
      child: const Text(
        'LoremDeserunt aliqua velit incididunt officia eiusmod anim adipisicing id tempor consequat aliquip id. Ipsum duis reprehenderit deserunt culpa. Sit deserunt aliquip amet duis sit officia incididunt sunt exercitation aliqua aliqua commodo deserunt. Ut aliqua exercitation commodo enim. Nostrud mollit voluptate amet nulla proident laboris duis laboris ad duis culpa. Lorem Deserunt aliqua velit incididunt officia eiusmod anim adipisicing id tempor consequat aliquip id. Ipsum duis reprehenderit deserunt culpa. Sit deserunt aliquip amet duis sit officia incididunt sunt exercitation aliqua aliqua commodo deserunt. Ut aliqua exercitation commodo enim. Nostrud mollit voluptate amet nulla proident laboris duis laboris ad duis culpa.',
        textAlign: TextAlign.justify,
      ),
    );
  }
}
