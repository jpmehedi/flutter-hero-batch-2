

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  static const String path = "HomeScreen";
   HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   int _value = 2;

  _showBottomSheet(BuildContext context){
     return  showModalBottomSheet(
      context: context, 
      elevation: 20,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        // side: BorderSide(
        //   width: 2,
        //   color: Colors.red
        // )
      ),
      backgroundColor: Colors.white,
      builder: (BuildContext context){
        return Container(
          height: 700,
          child: Column(
            children: [
              ListTile(
                onTap: (){},
                leading: Icon(Icons.photo),
                title: Text("Photo"),
              ),
              ListTile(
                onTap: (){},
                leading: Icon(Icons.photo),
                title: Text("Photo"),
              ),
                  ListTile(
                onTap: (){},
                leading: Icon(Icons.photo),
                title: Text("Photo"),
              )
            ],
          ),
        );
      }
    );
  }

   Future  launchUrl(url)async{
    //  String url = "https://flutter.dev";
     if(await canLaunch(url)){
       await launch(url);
     }else {
       throw "Could not launch $url";
     }
   }

    String email = "smith@example.org";

  Future  launchEmail(email)async{
     if(await canLaunch("mailto:$email?subject=News&body=Hello")){
       await launch("mailto:smith@example.org?subject=News&body=Hello");
     }else {
       throw "Could not create email";
     }
   }


    Future  callPhone()async{
     if(await canLaunch("tel:+1 555 010 999")){
       await launch("tel:+1 555 010 999");
     }else {
       throw "Could not create call";
     }
   }

  Future  sms()async{
     if(await canLaunch("sms:Hi Mehedi")){
       await launch("sms: Hi Mehedi");
     }else {
       throw "Could not create sms";
     }
   }








  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: Text(
            "I'm Poor",
            style: Theme.of(context).textTheme.headline1
          ),
          centerTitle: true,
        ),

        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Theme.of(context).buttonColor
                ),
                onPressed: (){
                  // launchUrl("https://mehedihasaninfo.com/");
                  // launchEmail(email);
                  // callPhone();
                  sms();
                }, 
                child: Text("Click")
              ),

              Text("Hello", style: Theme.of(context).textTheme.bodyText1,),


              // ElevatedButton(
              //   onPressed: (){
                  // _showBottomSheet(context);
              //   }, 
              //   child: Text("Click")
              // ),

              //  Tooltip(
              //    message: "This is tooltip button",
              //    decoration: BoxDecoration(
              //      color: Colors.green
              //    ),
              //    waitDuration: Duration(
              //      minutes: 1,
              //    ),
              //    showDuration: Duration(
              //      seconds: 5
              //    ),
              //    padding: EdgeInsets.all(20),
              //    textStyle: TextStyle(
              //      color: Colors.red
              //    ),
              //    child: ElevatedButton(
              //     onPressed: (){
                 
              //     }, 
              //     child: Text("ToolTip")
              //                ),
              //  ),



              //  Slider(
              //    value: _value.toDouble(), 
              //    activeColor: Colors.red,
              //    inactiveColor: Colors.orange,
              //    label: "Triker",
              //    onChanged: (double newValue){
              //      setState(() {
              //        _value = newValue.round();
              //      });
              //    },
              //    max: 20.0,
              //    min: 1.0,
                //  divisions: 10,
                //  semanticFormatterCallback: (double value){
                //    return "${value.round()}";
                //  },
              // )
            
            ],
          ),
        ),

        floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).floatingActionButtonTheme.backgroundColor,
          foregroundColor: Theme.of(context).floatingActionButtonTheme.foregroundColor,
          onPressed: (){},
          child: Icon(Icons.add, color: Theme.of(context).iconTheme.color,),
        ),
      );
  }
}