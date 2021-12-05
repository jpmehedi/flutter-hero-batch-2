import 'package:demo_project/screen_two.dart';
import 'package:flutter/material.dart';

class ScreenOne extends StatefulWidget {
  static const String path = "ScreenOne";

  @override
  _ScreenOneState createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  final String name = "Mehedi Hasan";

  final int age = 28;

  List gender = [
    "Male",
    "Female",
    "Other"
  ];

  bool isSelected = false;

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
                // Route route = MaterialPageRoute(builder: (context)=> ScreenTwo(age: age, name: name));
                // Navigator.push(context, route);

                // Navigator.pushNamed(context, ScreenTwo.path, arguments: [name, age]);
                Navigator.pushNamed(context, ScreenTwo.path, arguments: {"name": name, "age": age, "gender": gender});

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    duration: Duration(seconds: 10),
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                    content: Text("Button was clicked!"),
                    action: SnackBarAction(
                      label: "Yes", 
                      onPressed: (){}
                    ),
                  )
                );
              }, 
              child: Text("Screen One")
            ),


            SizedBox(height: 20,),

            Transform.scale(
              scale: 3,
              child: Switch(
                value: isSelected, 
                onChanged: (value){

                  // isSelected == false ? 
                  //   setState(() {
                  //     isSelected = true; 
                  //   }) : setState(() {
                  //     isSelected = false;
                  //   });


                  if(isSelected == false) {
                    setState(() {
                      isSelected = true; 
                    });
                  }else {
                    setState(() {
                      isSelected = false;
                    });
                  }
                },
                activeColor: Colors.orange,
                activeTrackColor: Colors.pink,
                inactiveThumbColor: Colors.red,
                inactiveTrackColor: Colors.green,
              ),
            )
          ],
        ),
      ),
    );
  }
}