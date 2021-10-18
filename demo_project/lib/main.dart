
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      title: "Demo Project",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "I'm Poor",
            style: TextStyle(
              // backgroundColor: Colors.red,
              // color: Colors.orange,
              color: Color(0xffFFA500),
              fontSize: 24.0,
              // fontWeight: FontWeight.bold
              fontWeight: FontWeight.w700,
              fontFamily: "Arial",
              fontStyle: FontStyle.italic,
              letterSpacing: 5.5,
            ),
          ),
          centerTitle: true,
        ),
        body: Image.asset(
          "assets/poor_man.png",
          width: 500,
          height: 800,
          fit: BoxFit.cover,
        )

        // body: Image.network(
        //   "https://picsum.photos/250?image=9",
          // width: 500,
          // height: 700,
          // fit: BoxFit.cover,
        // ),
      )
    )
  );
}