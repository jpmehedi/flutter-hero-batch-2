import 'package:flutter/material.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Button"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // TestScreen(),
            // SizedBox(
            //   width: 300,
            //   height: 48,
            //   child: ElevatedButton(
            //     onPressed: (){}, 
            //     style: ElevatedButton.styleFrom(
            //       primary: Colors.orange,
            //       shadowColor: Colors.red,
            //       elevation: 20,
                  // minimumSize: Size(200, 48),
                  // tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            //       side: BorderSide(
            //         color: Colors.black,
            //         width: 5,
            //         style: BorderStyle.solid
            //       ),
            //     ),
            //     child: Text("Button")
            //   ),
            // )


              ElevatedButton(
                onPressed: (){}, 
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                  shadowColor: Colors.red,
                  elevation: 20,
                  // minimumSize: Size(100, 100),
                  minimumSize: Size(100, 48),
                  // shape: CircleBorder()
                  // tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  // shape: RoundedRectangleBorder(
                  //   borderRadius: BorderRadius.circular(50),
                  //   side: BorderSide.none
                  // ),
                  // side: BorderSide(
                  //   color: Colors.black,
                  //   width: 5,
                  //   style: BorderStyle.solid
                  // ),
                ),
                child: Text("Button")
              ),


             ElevatedButton.icon(
                onPressed: (){}, 
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                  shadowColor: Colors.red,
                  elevation: 20,
                  // minimumSize: Size(100, 100),
                  minimumSize: Size(100, 48),
                  // shape: CircleBorder()
                  // tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  // shape: RoundedRectangleBorder(
                  //   borderRadius: BorderRadius.circular(50),
                  //   side: BorderSide.none
                  // ),
                  // side: BorderSide(
                  //   color: Colors.black,
                  //   width: 5,
                  //   style: BorderStyle.solid
                  // ),
                ),
                icon: Icon(Icons.youtube_searched_for),
                label: Text("Button")
              ),

              IconButton(
                onPressed: (){}, 
                iconSize: 50,
                splashColor: Colors.orange,
                splashRadius: 30,
                // alignment: Alignment.centerLeft,
                icon: Icon(Icons.card_giftcard)
              ),

              GestureDetector(
                onTap: (){
                  print("Hello");
                },
                child: Image.asset("assets/poor_man.png")
              ),


              TextButton(
                onPressed: (){}, 
                  style: ElevatedButton.styleFrom(
                 side: BorderSide(
                    color: Colors.black,
                    width: 1,
                    style: BorderStyle.solid
                  ),
                ),
                child: Text("Button")
              ),

              OutlinedButton(
                onPressed: (){}, 
                child: Text("Outline Button")
              )
          ],
        ),
      ),
    );
  }
}