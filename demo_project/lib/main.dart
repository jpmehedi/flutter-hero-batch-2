

import 'package:demo_project/home.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      title: "Demo Project",
      debugShowCheckedModeBanner: false,
      // theme: CustomTheme.lightTheme(),
      // darkTheme: CustomTheme.darkTheme(),
      // themeMode: ThemeMode.dark,
      home: Home(),
      // initialRoute: ScreenThree.path,
      // routes: {
      //   GridViewScreen.path: (context)=> GridViewScreen(),
      //   HomeScreen.path: (context)=> HomeScreen(),
      //   TabBarScreen.path: (context)=> TabBarScreen(),
      //   ScreenOne.path : (context)=> ScreenOne(),
      //   ScreenTwo.path : (context)=> ScreenTwo(),
      //   ScreenThree.path : (context)=> ScreenThree(),
      //   Day21Screen.path: (context)=> Day21Screen(), 
      // },
    )
  );
}

