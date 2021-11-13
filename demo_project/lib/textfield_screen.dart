import 'package:flutter/material.dart';

class TextFieldScreen extends StatefulWidget {
  const TextFieldScreen({ Key? key }) : super(key: key);

  @override
  _TextFieldScreenState createState() => _TextFieldScreenState();
}

class _TextFieldScreenState extends State<TextFieldScreen> {


 TextEditingController textEditingController =  TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(title: Text("Text Field Screen"),),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
           TextFormField(
             controller: textEditingController,
              // obscureText: true,
              // obscuringCharacter: "#",
              maxLength: 10,
              // maxLines: 5,
              onChanged: (value){
                setState(() {
                  textEditingController.text = value;
                });
              },
              keyboardType: TextInputType.text,
              // textDirection: TextDirection.rtl,
              decoration: InputDecoration(
                hintText: "Enter your name",
                hintStyle: TextStyle(
                  color: Colors.orange
                ),
                icon: Icon(Icons.home),
                prefixIcon: Icon(Icons.person, color: Colors.red,),
                // prefix: Text("Prefix"),
                // prefixText: "asdm",
                prefixStyle: TextStyle(color: Colors.red),
                suffixIcon: Icon(Icons.visibility_sharp)  ,
                labelText: "Your Name"  ,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: Colors.orange,
                    width: 2
                  )
                ) ,
                focusedBorder:  OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: Colors.red,
                    width: 2
                  )
                ), 
                filled: true,
                fillColor: Colors.white        
              ),
            ),

            Text(textEditingController.text) 


            // TextField(
            //   // obscureText: true,
            //   // obscuringCharacter: "#",
            //   maxLength: 10,
            //   // maxLines: 5,
            //   keyboardType: TextInputType.text,
            //   textDirection: TextDirection.rtl,
            //   decoration: InputDecoration(
            //     hintText: "Enter your name",
            //     hintStyle: TextStyle(
            //       color: Colors.orange
            //     ),
            //     icon: Icon(Icons.home),
            //     prefixIcon: Icon(Icons.person, color: Colors.red,),
            //     // prefix: Text("Prefix"),
            //     // prefixText: "asdm",
            //     prefixStyle: TextStyle(color: Colors.red),
            //     suffixIcon: Icon(Icons.visibility_sharp)  ,
            //     labelText: "Your Name"  ,
            //     enabledBorder: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(15),
            //       borderSide: BorderSide(
            //         color: Colors.orange,
            //         width: 2
            //       )
            //     ) ,
            //     focusedBorder:  OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(15),
            //       borderSide: BorderSide(
            //         color: Colors.red,
            //         width: 2
            //       )
            //     ), 
            //     filled: true,
            //     fillColor: Colors.white        
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}