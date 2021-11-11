import 'package:demo_project/profile.dart';
import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  final String? name;
  final int? age;
  const ScreenTwo({this.name, this.age});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Screen Two"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(name!),
            Text(age.toString()),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: (){
                Route route = MaterialPageRoute(builder: (context)=> ProfileScreen());
                Navigator.push(context, route);
              }, 
              child: Text("Screen Two")
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.pop(context);
              }, 
              child: Text("Back")
            )
          ],
        ),
      ),
    );
  }
}