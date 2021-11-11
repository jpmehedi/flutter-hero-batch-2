import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  final List<Widget> _pages = [
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.orange,
    ),
    // ScreenOne(),
    // ScreenThree(),
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.green,
    ),
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.pink,
    ),
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.purple,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Botton Navigation Bar"),),
      body: _pages.elementAt(selectedIndex),
      bottomNavigationBar: SizedBox(
        height: 56,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 20,
          // backgroundColor: Colors.red,
          currentIndex: selectedIndex,
          unselectedItemColor: Colors.purple,
          selectedItemColor: Colors.orange,
          // selectedFontSize: 28,
          // unselectedFontSize: 50,
          iconSize: 24,
          onTap: (int index){
            setState(() {
              selectedIndex = index; 
            });
          },
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              tooltip: "",
              icon: Icon(Icons.home),
              label:"Home" 
            ),          
            BottomNavigationBarItem(
              tooltip: "Settings",
              icon: Icon(Icons.settings),
              label: "Settings"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Search"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Search"
            )
          ]
        ),
      ),
    );
  }
}