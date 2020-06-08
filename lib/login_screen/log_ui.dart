import 'package:flutter/material.dart';
import 'package:skateboarddesingandfirebase/Homes/homes.dart';
import 'package:skateboarddesingandfirebase/authenticate/authService.dart';
import 'package:skateboarddesingandfirebase/shared/contants.dart';
import 'package:skateboarddesingandfirebase/signUp/SignUp_screen.dart';

class Login_screen extends StatefulWidget {
  final Function toggleSayfa;
  Login_screen({this.toggleSayfa});

  @override
  _Login_screenState createState() => _Login_screenState();
}

class _Login_screenState extends State<Login_screen> {
 final AuthService _authService = AuthService();
  String email='';
  String password='';
  final _formKey = GlobalKey<FormState>();
  String error='';
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
              image: AssetImage("assets/skateboard_login.jpg"),
              fit: BoxFit.cover,
            ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:50.0),
            child: Container(
              alignment: Alignment.topCenter,
              child: Text(
                'Skateboard',
                textAlign: TextAlign.justify,
                style: TextStyle(color: Colors.white, fontSize: 28,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Container(
                alignment: Alignment.center,
                child:TextFormField(
                  validator: (val)=>val.length<5 ? 'lütfen 5 karakterli yada dahafazla  olmalı': null,
                  obscureText: true,
                  onChanged: (val) {
                    password=val;
                  },
                  decoration: inputDecoration.copyWith(hintText: 'Password'),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 170),
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Container(
                alignment: Alignment.center,
                child:TextFormField(
                  validator: (val)=>val.isEmpty?'Lütfen mail adresinizi giriniz': null,
                  onChanged: (val) {
                    email=val;

                  },
                  decoration: inputDecoration,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:200.0),
            child: Container(
              alignment: Alignment.center,
              child: ButtonTheme(
                minWidth: 140,
                child: RaisedButton(
                  child: Text('Login',style: TextStyle(color: Colors.white,fontSize: 24),),
                  onPressed: ()async{

                    dynamic sonuc = await _authService.signIn(email, password);
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Homes()));
                    if(sonuc== null){
                      setState(() {
                        error='giriş başarısız';

                      });
                    }
                  },
                  color: Colors.black38,
                  elevation: 8.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),

                  ),

                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top:450.0),
            child: Container(
              alignment: Alignment.center,
              child: ButtonTheme(
                minWidth: 200,
                child: RaisedButton(
                  child: Text('Sign Up',style: TextStyle(color: Colors.white,fontSize: 24),),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
                  },
                  color: Colors.black38,
                  elevation: 8.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                  ),
                ),
              ),
            ),
          )

        ],
      ),
    );
  }
}
/*   */
