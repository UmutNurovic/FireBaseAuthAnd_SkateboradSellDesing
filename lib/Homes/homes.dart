import 'package:flutter/material.dart';
import 'package:skateboarddesingandfirebase/Homes/HomesScreen.dart';
import 'package:skateboarddesingandfirebase/Homes/drawerScreen.dart';
import 'package:skateboarddesingandfirebase/modell.dart';
class Homes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF90A4AE),
      body: Stack(
        children: <Widget>[
          DrawerScreen(),
          HomeScreen()
        ],
      ),
    );
  }
}
