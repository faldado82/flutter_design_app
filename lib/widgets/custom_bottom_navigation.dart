import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: 0,
        showUnselectedLabels: false, // quitar nombre de no seleccionados
        selectedItemColor: Colors.pink,
        unselectedItemColor: const Color.fromRGBO(116, 117, 152, 1),
        backgroundColor: const Color.fromRGBO(55, 57, 84, 1),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_outlined),
            label: 'Calendario',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_pin_sharp),
            label: 'Perfil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_border),
            label: 'Favoritos',
          ),
        ]);
  }
}
