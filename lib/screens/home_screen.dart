import 'package:flutter/material.dart';
import 'package:flutter_design_app/widgets/background.dart';
import 'package:flutter_design_app/widgets/page_title.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
        // Background
        Background(),
        
        // Body
        _HomeBody()

      ]),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: const [
        //Titulos
        PageTitle(),


      ]),
    );
  }
}
