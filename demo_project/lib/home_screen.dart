

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

        body: Container(
          height: double.infinity,
          color: Colors.teal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.orange,
                child: FlutterLogo(),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.purple,
                    child: FlutterLogo(),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.pink,
                    child: FlutterLogo(),
                  ),
                   Container(
                    width: 100,
                    height: 100,
                    color: Colors.yellow,
                    child: FlutterLogo(),
                  ),
                ],
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.green,
                child: FlutterLogo(),
              ),
            ],
          ),
        ),

        // body: Container(
        //   width: double.infinity,
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //     crossAxisAlignment: CrossAxisAlignment.center,
        //     children: [
        //       Container(
        //         width: 100,
        //         height: 100,
        //         color: Colors.orange,
        //         child: FlutterLogo(),
        //       ),
        //       Container(
        //         width: 100,
        //         height: 100,
        //         color: Colors.pink,
        //         child: FlutterLogo(),
        //       ),
        //       Container(
        //         width: 100,
        //         height: 100,
        //         color: Colors.green,
        //         child: FlutterLogo(),
        //       ),
        
        //     ],
        //   ),
        // )

      );
  }
}