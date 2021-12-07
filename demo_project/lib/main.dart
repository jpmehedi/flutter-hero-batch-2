

import 'package:demo_project/custom_theme.dart';
import 'package:demo_project/gridview_screen.dart';
import 'package:demo_project/home_screen.dart';
import 'package:demo_project/screen_one.dart';
import 'package:demo_project/screen_three.dart';
import 'package:demo_project/screen_two.dart';
import 'package:demo_project/tabbar_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      title: "Demo Project",
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.lightTheme(),
      darkTheme: CustomTheme.darkTheme(),
      themeMode: ThemeMode.dark,
      initialRoute: HomeScreen.path,
      routes: {
        GridViewScreen.path: (context)=> GridViewScreen(),
        HomeScreen.path: (context)=> HomeScreen(),
        TabBarScreen.path: (context)=> TabBarScreen(),
        ScreenOne.path : (context)=> ScreenOne(),
        ScreenTwo.path : (context)=> ScreenTwo(),
        ScreenThree.path : (context)=> ScreenThree(),
      },
    )
  );
}

