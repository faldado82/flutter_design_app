import 'package:flutter/material.dart';
import 'package:flutter_design_app/widgets/background.dart';
import 'package:flutter_design_app/widgets/card_table.dart';
import 'package:flutter_design_app/widgets/custom_bottom_navigation.dart';
import 'package:flutter_design_app/widgets/page_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: const [
        // Background
        Background(),

        // Body
        _HomeBody()
      ]),
      bottomNavigationBar: const CustomBottomNavigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: const [
        //Titulos
        PageTitle(),

        // Card Table
        CardTable(),
      ]),
    );
  }
}
