
import 'package:flutter/material.dart';
class ScreenThree extends StatefulWidget {
   static const String path = "ScreenThree";
  const ScreenThree({ Key? key }) : super(key: key);

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> with TickerProviderStateMixin{
  
  late final AnimationController animationController = AnimationController(
    duration: Duration(seconds: 5),
    vsync: this,
  )..repeat();
  
  
  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
  String selectedValue = "Male";
  @override
  Widget build(BuildContext context) {
    print(animationController.value);
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        title: Text("Screen Three"),
        // automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          }, 
          icon: Icon(Icons.arrow_back)
        ),
      ),
      // drawer: Drawer(),
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // AnimatedBuilder(
            //   animation: animationController, 
            //   builder: (context, child){
            //     return Transform.rotate(
            //       angle: animationController.value * 2.0 * math.pi,
            //       child: Container(
            //         height: 200,
            //         width: 200,
            //         color: Colors.green,
            //         child: Text("${animationController.value}"),
            //       ),
            //     );
            //   }
            // )


            // ElevatedButton(
            //   onPressed: (){
            //     Navigator.pop(context);
            //   }, 
            //   child: Text("Back")
            // )


            DropdownButton(
              // hint: Text("Gender"),
              // disabledHint:Text("asdas") ,
              value: selectedValue,
              items:[
                DropdownMenuItem(
                  child: Text("Male"),
                  value: "Male",
                ),
                 DropdownMenuItem(
                  child: Text("Female"),
                  value: "Female",
                ),
                DropdownMenuItem(
                  child: Text("Others"),
                  value: 'Others',
                )
              ], 
              onChanged: (String? newValue){
                print(newValue);
                setState(() {
                  selectedValue = newValue!;
                });
              }
            )
          ],
        ),
      ),
    );
  }
}