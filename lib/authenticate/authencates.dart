import 'package:flutter/material.dart';
import 'package:skateboarddesingandfirebase/login_screen/log_ui.dart';
import 'package:skateboarddesingandfirebase/signUp/SignUp_screen.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool girisyap=true;
  void toggleSayfa(){
    setState(()=> girisyap =! girisyap);
  }

  @override
  Widget build(BuildContext context) {
    if(girisyap){
      return Login_screen(toggleSayfa: toggleSayfa);
    }else{
      return SignUpScreen(toggleSayfa: toggleSayfa);}
  }
}
