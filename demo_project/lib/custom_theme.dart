import 'package:flutter/material.dart';

class CustomTheme {

 static ThemeData lightTheme() {
  return ThemeData(
      primaryColor: Colors.red,
      accentColor: Colors.yellow,
      brightness: Brightness.light,
      fontFamily: "Lobster",
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
        focusColor: Colors.white
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: Colors.blue,
      ),
      iconTheme: IconThemeData(
        color: Colors.black
      ),
      textTheme: TextTheme(
        headline1: TextStyle(color: Colors.black, fontSize: 36),
        headline3: TextStyle(color: Colors.black, fontSize: 18),
        headline6: TextStyle(color: Colors.black, fontSize: 8),
        bodyText1: TextStyle(color: Colors.black, fontSize: 24), 
      )
    );
 }


 static ThemeData darkTheme() {
  return ThemeData(
    primaryColor: Colors.black,
    accentColor: Colors.white,
    brightness: Brightness.dark,
    fontFamily: "SourceSansPro",
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.black,
      foregroundColor: Colors.red,
      focusColor: Colors.white
    ),
    buttonColor: Colors.black,
    // buttonTheme: ButtonThemeData(
    //   buttonColor: Colors.black,
      
    // ),

    iconTheme: IconThemeData(
      color: Colors.white
    ),
    textTheme: TextTheme(
      headline1: TextStyle(color: Colors.white, fontSize: 36),
      headline3: TextStyle(color: Colors.white, fontSize: 18),
      headline6: TextStyle(color: Colors.white, fontSize: 8), 
      bodyText1: TextStyle(color: Colors.white, fontSize: 24), 
    )
  );
 }


}