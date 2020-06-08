import 'package:flutter/material.dart';
import 'package:skateboarddesingandfirebase/login_screen/log_ui.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Login_screen(),
    );
  }
}



