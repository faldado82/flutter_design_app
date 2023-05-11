import 'package:flutter/material.dart';

class ScrollDesignScreen extends StatelessWidget {
  const ScrollDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // guardo en una variable el box decoration para no sobrecargar el body
    const boxDecoration = BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [
          0.5,
          0.5
        ],
            colors: [
          Color(0xff7aeccb),
          Color(0xff30BAD6),
        ]));
    return Scaffold(
        // PageView por defecto viene con scrollDirection horizontal
        // si queremos que se comporte en el eje vertical se debe cambiar
        body: Container(
      decoration: boxDecoration,
      child: PageView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: const [
            Page1(),
            Page2(),
          ]),
    ));
  }
}

class Page1 extends StatelessWidget {
  const Page1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: const [
      Background(),
      MainContent(),
    ]);
  }
}

// Background
class Background extends StatelessWidget {
  const Background({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30BAD6),
      height: double.infinity,
      alignment: Alignment.topCenter,
      child: const Image(image: AssetImage('assets/scroll_1.png')),
      // Image.asset('assets/scroll_1.png'),
    );
  }
}

// Main Content
class MainContent extends StatelessWidget {
  const MainContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const shadow = Shadow(
      offset: Offset(3, 3),
      blurRadius: 10,
      color: Colors.black54,
    );
    const textStyle = TextStyle(
      color: Colors.white,
      fontSize: 40,
      fontWeight: FontWeight.bold,
      shadows: [
        shadow,
      ],
    );
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 40,
          ),
          const Text(
            '32° C',
            style: textStyle,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Miercoles',
            style: textStyle,
          ),
          const Text(
            '15 de Junio',
            style: textStyle,
          ),
          // todo: expanded
          Expanded(child: Container()),
          const Icon(
            Icons.keyboard_arrow_down,
            size: 100,
            color: Colors.white,
            shadows: [
              shadow,
            ],
          ),
        ],
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30BAD6),
      child: Center(
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.blueAccent,
            shape: const StadiumBorder(),
          ),
          onPressed: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 2),
            child: Text(
              'Bienvenido',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }
}
