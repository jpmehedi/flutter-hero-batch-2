
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
              // fontFamily: "Lobster",
              fontStyle: FontStyle.italic,
              letterSpacing: 5.5,
            ),
          ),
          centerTitle: true,
        ),

        body: Center(
          child: Text(
            "গড়িয়াহাটে সুবীর চাকি খুনে আটক প্রাক্তন পরিচারিকা সহ ২",
            style: TextStyle(
              //  fontFamily: "Lobster",
            ),
          )
        ),

        // body: Center(
        //   child: Icon(
        //     Icons.person,
        //     size: 100.0,
        //     color: Colors.orange,
        //   ),
        // )

        // body: Image.asset(
        //   "assets/poor_man.png",
        //   width: 500,
        //   height: 800,
        //   fit: BoxFit.cover,
        // )

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