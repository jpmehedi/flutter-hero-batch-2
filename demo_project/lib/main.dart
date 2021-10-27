
import 'package:demo_project/profile.dart';
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
      home: ProfileScreen(),
    )
  );
}