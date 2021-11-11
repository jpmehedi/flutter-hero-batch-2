import 'package:demo_project/screen_two.dart';
import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({ Key? key }) : super(key: key);
  final String name = "Mehedi Hasan";
  final int age = 28;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(title: Text("Screen One"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){              
                // Navigator.push(context, MaterialPageRoute(builder: (context)=> ScreenTwo()));
                Route route = MaterialPageRoute(builder: (context)=> ScreenTwo(age: age, name: name));
                Navigator.push(context, route);
              }, 
              child: Text("Screen One")
            )
          ],
        ),
      ),
    );
  }
}