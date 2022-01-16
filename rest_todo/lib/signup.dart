





import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:rest_todo/home_page.dart';

class FirebaseAuthen extends StatefulWidget {
  static const String path = "MyHomePage";

  @override
  _FirebaseAuthenState createState() => _FirebaseAuthenState();
}

class _FirebaseAuthenState extends State<FirebaseAuthen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isLoading = false;

  Future signUp(String email, String password)async{
    setState(() {
      isLoading = true;
    });
    try{
      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password
      );

      if(userCredential.user != null){
        Route route = MaterialPageRoute(builder: (ctx)=> HomePage());
        Navigator.push(context, route);
        print("Registration Successfully");
      }
    }catch(err){
      print("Error: $err");
    }

    setState(() {
      isLoading = false;
    });
  }

var imagePath;
  

  Future pickedImage()async{
    final ImagePicker _picker = ImagePicker();
      final XFile? image = await _picker.pickImage(
        source: ImageSource.camera, 
        preferredCameraDevice: CameraDevice.front,
        imageQuality: 50,
        maxHeight: 100,
        maxWidth: 100
      );
      if(image != null){
        setState(() {
          imagePath = File(image.path);
          print(imagePath);
        });
        saveImageToFirebaseStorage();
      }
    }

    var imageUrl;


   Future saveImageToFirebaseStorage() async{
     String image = imagePath.toString();
     var _image = image.split("/")[6];

     Reference reference = FirebaseStorage.instance.ref().child("profileImage/$_image");
     
     UploadTask uploadTask = reference.putFile(imagePath);

     TaskSnapshot snapshot = await uploadTask;

    var _getImageUrl ;
    _getImageUrl = await snapshot.ref.getDownloadURL();
    print("_getImageUrl: $_getImageUrl");

    if(_getImageUrl !=null){
      setState(() {
        imageUrl = _getImageUrl;
      });
    }

  }

  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Firebase Auth"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[

             imagePath != null ? CircleAvatar(
                radius: 36,
                backgroundImage: FileImage(imagePath)
              ) : CircleAvatar(
                radius: 36,
                backgroundImage: NetworkImage("https://picsum.photos/250?image=9"),
              ),

              IconButton(
                onPressed: (){
                  pickedImage();
                }, 
                icon: Icon(Icons.camera)
              ),



                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    hintText: "Email"
                  ),
                ),

                TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password"
                  ),
                ),

               isLoading ? 
               Center(child:  CircularProgressIndicator())
               : SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: (){
                      signUp(
                        emailController.text, 
                        passwordController.text
                      );
                    }, 
                    child: Text("Sign Up")
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
