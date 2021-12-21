import 'package:demo_project/route_animation.dart';
import 'package:demo_project/screen_three.dart';
import 'package:flutter/material.dart';

class Day21Screen extends StatefulWidget {
    static const String path = "Day21Screen";
  const Day21Screen({ Key? key }) : super(key: key);

  @override
  _Day21ScreenState createState() => _Day21ScreenState();
}

class _Day21ScreenState extends State<Day21Screen> {
  bool isSelected = false;
  double opacityLevel  = 1.0;


  // Route _createRoute(page){
  //   return PageRouteBuilder(
  //     pageBuilder: (context, animation, secondaryAnimation){
  //       return page;
  //     },

  //     transitionsBuilder: (context, animation, secondaryAnimation, child) {
  //       return SlideTransition(
  //         position: animation.drive(
  //           Tween(
  //             begin: Offset(0.0, 1.0),
  //             end: Offset.zero
  //           )
  //         ),
  //         child: child,
  //       );
  //     }
  //   );

  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.yellow,
      appBar: AppBar(title: Text("Hero Animation"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Hero(
            //   tag: "poor",
            //   child: Image.asset(
            //     "assets/poor_man.png", 
            //     height: 100,
            //     width: 100,
            //     ),
            // ),

            // AnimatedContainer(
            //   width: isSelected ? 400 : 150,
            //   height:  isSelected ? 400 : 150,
            //   color: isSelected ?  Colors.green : Colors.red,
            //   duration: Duration(seconds: 5),
            //   curve: Curves.easeInBack,
            //   child: Center(child: Text("Animation")),
            // ),

            

              // ElevatedButton(
              //   onPressed: (){
              //       setState(() {
              //         isSelected = !isSelected;
              //       });
                  // Navigator.pushNamed(context, ScreenTwo.path);
              //   }, 
              //   child: Text("Click")
              // )

            // AnimatedOpacity(
            //   opacity: opacityLevel, 
            //   duration: Duration(seconds: 5),
            //   curve: Curves.easeInOut,
            //   child: Container(
            //     width: 200,
            //     height: 200,
            //     color:Colors.green ,
            //   ),
            // ),


            //   ElevatedButton(
            //     onPressed: (){
            //       if(opacityLevel == 0.0){
            //         setState(() {
            //           opacityLevel = 1.0;
            //         });
            //       }else {
            //         setState(() {
            //           opacityLevel = 0.0;
            //         });
            //       }
            //     }, 
            //     child: Text("Click")
            //   )

            // Container(
            //   width: 400,
            //   height: 400,
            //   color: Colors.white,
            //   child: AnimatedAlign(
            //     alignment: isSelected ? Alignment.topLeft : Alignment.bottomRight, 
            //     duration: Duration(seconds: 1),
            //     curve: Curves.easeInOutCubic,
            //     child: FlutterLogo(size: 50,),
            //   ),
            // ),

            // ElevatedButton(
            //     onPressed: (){
            //         setState(() {
            //           isSelected = !isSelected;
            //        });
            //   }, 
            //   child: Text("Click")
            // )
            ElevatedButton(
                onPressed: (){
                  Navigator.of(context).push(createRoute(ScreenThree()));
                }, 
              child: Text("Click")
            )
          ],
        ),
      ),
    );
  }
}