

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          child: Container(
            height: 300,
            width: 300,
            // padding: EdgeInsets.all(100),
            // padding: EdgeInsets.only(top: 50, left: 50),
            //vcertical = top and bottom 
            //horizontal = left and right
            //padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
            padding: EdgeInsets.zero,
            margin: EdgeInsets.only(left: 100, top: 200),
            decoration: BoxDecoration(
              color: Colors.red,
              // borderRadius: BorderRadius.all(Radius.circular(30))
              borderRadius: BorderRadius.circular(150),
              // borderRadius: BorderRadius.only(
              //   topRight: Radius.circular(40), 
              //   bottomLeft: Radius.circular(50)
              // )
              // borderRadius: BorderRadius.horizontal(
              //   left: Radius.circular(40), 
              //   right:  Radius.circular(40),
              // ),
              // borderRadius: BorderRadius.vertical(
              //   top: Radius.circular(40), 
              //   bottom:  Radius.circular(40),
              // ),

              // border: Border(
              //   left: BorderSide(
              //     color: Colors.black,
              //     width: 10
              //   ),
              //   right: BorderSide(
              //     color: Colors.black,
              //     width: 5
              //   )
              // )

              border: Border.all(
                color: Colors.green,
                width: 5
              ),

              // gradient: LinearGradient(
              //   begin: Alignment.bottomLeft,
              //   end: Alignment.topRight,
              //   colors: [   
              //     Colors.green,
              //     Colors.red,
              //     Colors.teal,
              //   ],
              //   stops: [
              //     0.1,
              //     0.3,
              //     0.5
              //   ]
              // )

              // gradient: RadialGradient(
              //   center: Alignment.bottomLeft,
              //   colors: [
              //     Colors.green,
              //     Colors.red,
              //     Colors.teal,
              //   ],
              //  stops: [
              //     0.1,
              //     0.3,
              //     0.5
              //   ]
              // )

              // boxShadow: [
              //   BoxShadow(
              //     color: Colors.green,
              //     blurRadius: 5,
              //     spreadRadius: 5,
              //     offset: Offset(-7, -7)
              //   )
              // ]

              // image: DecorationImage(
              //   image: NetworkImage("https://picsum.photos/250?image=9"),
              // )
            ),
            // child: Image.network("https://picsum.photos/250?image=9")
          ),
        ),

      

        // body: Center(
        //   child: Text(
        //     "গড়িয়াহাটে সুবীর চাকি খুনে আটক প্রাক্তন পরিচারিকা সহ ২",
        //     style: TextStyle(
              //  fontFamily: "Lobster",
        //     ),
        //   )
        // ),

        // body: Center(
        //   child: Icon(
        //     FontAwesomeIcons.allergies,
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

      );
  }
}