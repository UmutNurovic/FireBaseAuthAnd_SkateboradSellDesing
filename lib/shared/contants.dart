import 'package:flutter/material.dart';

const inputDecoration= InputDecoration(

    hintStyle: TextStyle(fontSize: 20.0, color: Colors.white),
    hintText: 'Email',
    fillColor: Colors.white30,
    filled: true ,
    enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white12,width: 2.0,)
    ),
    focusedBorder: OutlineInputBorder(

    borderSide: BorderSide(color: Colors.black12,width: 2.0,))

);
