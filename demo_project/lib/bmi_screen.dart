import 'package:flutter/material.dart';

class BmiScreen extends StatelessWidget {
  const BmiScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Bmi Calculator".toUpperCase(),
          style: TextStyle(color: Colors.black)
        ),
        actions: [
          IconButton(
            onPressed: (){}, 
            icon: Icon(Icons.night_shelter,)
          )
        ],
      ),
      drawer: Drawer(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Card(
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Text("Age(In Year)", 
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        Text(
                          "18",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 60,
                            fontWeight: FontWeight.w700
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              onPressed: (){}, 
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder()
                              ),
                              child: Icon(Icons.remove)
                            ),
                            SizedBox(width: 10,),
                            ElevatedButton(
                              onPressed: (){}, 
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder()
                              ),
                              child: Icon(Icons.remove)
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Text(
                        "Weight (Kg)",                      
                         style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        Text(
                          "50",
                           style: TextStyle(
                            color: Colors.black,
                            fontSize: 60,
                            fontWeight: FontWeight.w700
                          ),
                        ),
                        Row(
                          children: [
                            ElevatedButton(
                              onPressed: (){}, 
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder()
                              ),
                              child: Icon(Icons.remove)
                            ),
                            SizedBox(width: 10,),
                            ElevatedButton(
                              onPressed: (){}, 
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder()
                              ),
                              child: Icon(Icons.remove)
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),

            Card(
              elevation: 10,
              child: Container(
                padding:  EdgeInsets.all(15.0),
                height: 190,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 150,
                          height: 32,
                          decoration: BoxDecoration(
                            color: Colors.purple.withOpacity(0.25),
                            borderRadius: BorderRadius.circular(16)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("cm"),
                              Switch(
                                value: true, 
                                onChanged: (value){}
                              ),
                              Text("ft"),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Height",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Colors.black
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 80,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.50),
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "4",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 28,
                                  fontWeight: FontWeight.w700
                                ),
                              ),
                              Icon(Icons.arrow_downward, size: 28,),
                            ],
                          ),
                        ),
                        Container(
                          height: 80,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.50),
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "8\"",                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 28,
                                  fontWeight: FontWeight.w700
                                ),
                              ),
                              Icon(Icons.arrow_downward, size: 28,),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),

            Card(
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Text(
                      "Gender",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Colors.black
                      )
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "I'm",
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w700,
                              color: Colors.black
                          )
                        ),
                        Text(
                          "Female",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black
                          )
                        ),
                          Switch(
                          value: true, 
                          onChanged: (value){}
                        ),
                        Text(
                          "Male",
                           style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black
                          )
                        )

                      ],
                    )
                  ],
                ),
              ),
            ),
            ElevatedButton(
              onPressed: (){}, 
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24)
                ),
                minimumSize: Size(200, 48)
              ),
              child: Text('Calculate'.toUpperCase())
            )
          ],
        ),
      ),
    );
  }
}