
import 'package:demo_project/button_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      title: "Demo Project",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Lobster",
        textTheme: TextTheme(

        )
      ),
      home: ButtonScreen(),
    )
  );
}