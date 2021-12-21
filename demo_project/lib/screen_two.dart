import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
 static const String path = "ScreenTwo";
 final String? name;
 final int? age;
  const ScreenTwo({this.age, this.name});
  @override
  Widget build(BuildContext context) {
    // final Map data = ModalRoute.of(context)!.settings.arguments as Map;
    // print("Data: $data");
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        title: Text("Screen Two"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [


            Hero(
              tag: "poor",
              child: Image.asset(
                "assets/poor_man.png", 
                height: 250,
                width: 300,
              ),
            ),

            // Text(data["name"]),
            // Text(data["age"].toString()),
            // Text(data["gender"][0]),
            // SizedBox(
            //   height: 20,
            // ),
            // ElevatedButton(
            //   onPressed: (){
                
            //     Navigator.pushNamed(context, ScreenThree.path);
            //   }, 
            //   child: Text("Screen Two")
            // ),
            // SizedBox(
            //   height: 20,
            // ),
            // ElevatedButton(
            //   onPressed: (){
            //     Navigator.pop(context);
            //   }, 
            //   child: Text("Back")
            // )
          ],
        ),
      ),
    );
  }
}