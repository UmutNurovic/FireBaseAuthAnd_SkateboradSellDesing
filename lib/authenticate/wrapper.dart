import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:skateboarddesingandfirebase/Homes/homes.dart';
import 'package:skateboarddesingandfirebase/authenticate/authencates.dart';
import 'package:skateboarddesingandfirebase/authenticate/users.dart';
class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user=Provider.of<Users>(context);
    print(user);
    if(user == null){
      return Authenticate();
    }else{
      return Homes();
    }

  }
}