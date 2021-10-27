import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
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
          ],
        ),
      ),
    );
  }
}