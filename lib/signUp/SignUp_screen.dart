import 'package:flutter/material.dart';
import 'package:skateboarddesingandfirebase/Homes/homes.dart';
import 'package:skateboarddesingandfirebase/authenticate/authService.dart';
import 'package:skateboarddesingandfirebase/shared/contants.dart';


class SignUpScreen extends StatefulWidget {
  final Function toggleSayfa;

  SignUpScreen({this.toggleSayfa});

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String email='';
  final AuthService _authService = AuthService();
  String password='';
  String error='';
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/skateboard_login.jpg"),
                  fit: BoxFit.cover,
                )
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(top:10.0),
              child: Column(

                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: TextFormField(
                      validator: (val)=>val.isEmpty?'Lütfen mail adresinizi giriniz': null,
                      onChanged: (val) {
                        setState(() {
                          email=val;
                        });
                      },
                      decoration: inputDecoration.copyWith(),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:100.0),
              child: Column(

                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: TextFormField(
                      validator: (val)=>val.length<5 ? 'lütfen 5 karakterli yada dahafazla  olmalı': null,
                      obscureText: true,
                      onChanged: (val) {
                        setState(() {
                          password=val;
                        });
                      },
                      decoration: inputDecoration.copyWith(hintText: 'Password'),

                    ),
                  ),

                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: RaisedButton(
                child: Text('Login',style: TextStyle(color: Colors.white,fontSize: 24),),
                onPressed: ()async{
                  if(_formKey.currentState.validate()){

                    dynamic sonuc = await _authService.register(email, password);
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Homes()));
                    if(sonuc == null ){
                      setState(() {
                        error = "Lütfen geçerli bir mail adresi yada parola giriniz";

                      });
                    }

                  }
                  else{}
                },
                color: Colors.black38,
                elevation: 8.0,
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(18.0),
                ),
              ),
            ),
            SizedBox(height:10.0 ,),
            Text(error,style: TextStyle(color:Colors.white30,fontSize: 24),)

          ],
        ),
      ),
    );
  }
}
