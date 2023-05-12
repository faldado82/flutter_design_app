import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_design_app/screens/basic_design.dart';
import 'package:flutter_design_app/screens/home_screen.dart';
import 'package:flutter_design_app/screens/scroll_design.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // para dejar oscuro (dark) o claro (light) el overlay en caso de que sea nesesario
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home_design',
      routes: {
        'home_design': (_) => const HomeScreen(),
        'basic_design': (_) => const BasicDesignScreen(),
        'scroll_design': (_) => const ScrollDesignScreen(),
      },
    );
  }
}
