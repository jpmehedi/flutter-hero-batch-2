import 'package:flutter/material.dart';

class TabBarScreen extends StatelessWidget {
  static const String path = "TabBarScreen";
  const TabBarScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 2,
      child: Scaffold(
         appBar: AppBar(title: Text("AppBar"),),
         body: Column(
           children: [
             TabBar(
               indicatorColor: Colors.red,
              //  isScrollable: true,
               indicatorSize: TabBarIndicatorSize.tab,
              //  indicatorPadding: EdgeInsets.all(10),
               indicatorWeight: 5.0,
               labelColor: Colors.green,
               labelPadding: EdgeInsets.all(10),
              //  labelStyle: TextStyle(),
              unselectedLabelColor: Colors.red,
              indicator: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.redAccent, Colors.orangeAccent]),
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.redAccent
              ),
               tabs: [
                 Tab(
                   child: Icon(Icons.home),
                 ),
                 Tab(
                   child: Icon(Icons.favorite),
                 )
               ]
             ),

             Expanded(
               child: TabBarView(
                 children: [
                   Container(
                     color: Colors.orange,
                     width: double.infinity,
                     height: double.infinity,
                   ),
                   Container(
                     color: Colors.pink,
                     width: double.infinity,
                     height: double.infinity,
                   )
                 ]
               ),
             )
           ],
         ),
      ),
    );
  }
}