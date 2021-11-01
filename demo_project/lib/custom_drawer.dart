import 'package:flutter/material.dart';
class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Stack(
            children: [
              Image.network(
                "https://picsum.photos/250?image=9", 
                width: 400, 
                fit: BoxFit.fitWidth
              ),
              Positioned(
                top: 40,
                left: 30,
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage :AssetImage("assets/poor_man.png")
                ),
              ),
              Positioned(
                top: 140,
                left: 30,
                child: Text(
                  "Mehedi Hasan", 
                  style: TextStyle(color: Colors.orange, fontSize: 28),
                ),
              ),
              Positioned(
                top: 170,
                 left: 30,
                child: Text(
                  "mehedi@genex.com",
                  style: TextStyle(color: Colors.orange, fontSize: 24),
                ),
              )
            ],
          ),
          ListTile(
            onTap: (){
              print("Hello World");
            },
            shape: tileShape(),
            leading: Icon(Icons.home),
            title: Text("Home"),
            subtitle: Text("This is home tile"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            onTap: (){
              print("Hello World");
            },
            leading: Icon(Icons.home),
            title: Text("About"),
            shape: tileShape(),
            subtitle: Text("This is home tile"),
            trailing: Icon(Icons.person),
          ),
          ListTile(
            tileColor: Colors.orange,
            selectedTileColor: Colors.pink,
            hoverColor: Colors.green,
            shape: tileShape(),
            onTap: (){
              print("Hello World");
            },
            leading: Icon(Icons.settings),
            title: Text("Setting"),
            subtitle: Text("This is home tile"),
            trailing: Icon(Icons.arrow_forward_ios),
          )
        ],
      ),
    );
  }

  RoundedRectangleBorder tileShape() {
    return RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
      side: BorderSide(
        color: Colors.black,
        width: 3
      )
    );
  }
}