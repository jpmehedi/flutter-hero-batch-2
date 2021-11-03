import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({ Key? key }) : super(key: key);

  showAlertDialog(BuildContext context) {
    return showDialog(
      barrierDismissible: false,
      // barrierColor: Colors.red.shade100,
      context: context, 
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.orange,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(
              color: Colors.red,
              width: 5
            )
          ),
          // titleTextStyle: TextStyle(color: Colors.white),
          title: Text("This is alert dialog", style: TextStyle(color: Colors.white),),
          content: Text("This is body of alert dialog"),
          actions: [
            TextButton(
              onPressed: (){}, 
              child: Text("Yes")
            ),
            TextButton(
              onPressed: (){
                Navigator.pop(context);
              }, 
              child: Text("No")
            )
          ],
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        // leading: Icon(Icons.person),
        title: Text("Profile"),
        actions: [
          PopupMenuButton(
            icon: Icon(Icons.more_horiz),
            onSelected: (value){
              if(value == 1) {
                print("Go to contact screen");
              }else if (value == 2) {
                 print("Go to play store");
              }else {
                print("Rating page");
              }
            },
            color: Colors.orange,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(
                color: Colors.black,
                width: 4
              )
            ),
            offset: Offset(5, 56),
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: Text("Item 1"),
                  value: 1,
                ),
                PopupMenuItem(
                  child: Text("Item 2"),
                  value: 2,
                ),
                PopupMenuItem(
                  child: Text("Item 3"),
                  value: 3,
                )
              ];
            }
          )
        ],
      ),
      drawer: Drawer(
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
            subtitle: Text("This is home tile"),
            trailing: Icon(Icons.person),
          ),
          ListTile(
            tileColor: Colors.orange,
            selectedTileColor: Colors.pink,
            hoverColor: Colors.green,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(
                color: Colors.black,
                width: 3
              )
            ),
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
    ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/poor_man.png"),
            ),
            Text(
              "Mr. Mehedi",
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Lobster",
                fontSize: 28,
                fontWeight: FontWeight.w700
              ),
            ),
            Text(
              "Flutter Developer",
              style: TextStyle(
                color: Colors.white.withOpacity(0.75),
                fontFamily: "SourceSansPro",
                fontSize: 24,
                fontWeight: FontWeight.w500,
                letterSpacing: 2.5
              ),
            ),

            Divider(
              // height: 40,
              thickness: 1,
              color: Colors.white.withOpacity(0.75),
              indent: 160,
              endIndent: 160,
            ),
            Container(
              height: 48,
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8)
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.phone, 
                    color: Colors.teal, 
                    size: 28,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "+01790180825",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.teal,
                      fontFamily: "SourceSansPro"
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 48,
              padding: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8)
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.email,
                    color: Colors.teal, 
                    size: 28,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "mehedi@genex.com",
                     style: TextStyle(
                      fontSize: 24,
                      color: Colors.teal,
                      fontFamily: "SourceSansPro"
                    ),
                  )
                ],
              ),
            ),

            ElevatedButton(
              onPressed: (){
                showAlertDialog(context);
              }, 
              child: Text("Click")
            )
          ],
        ),
      ),
    );
  }
}

