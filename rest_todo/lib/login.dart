import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:rest_todo/home_page.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isLoading = false;

  
  Future login(String email, String password)async{
    setState(() {
      isLoading = true;
    });
    try{
      UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password
      );

      if(userCredential.user != null){
        Route route = MaterialPageRoute(builder: (ctx)=> HomePage());
        Navigator.push(context, route);
        print("Log in  Successfully");
      }
    }catch(err){
      print("Error: $err");
    }

    setState(() {
      isLoading = false;
    });
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
                      login(
                        emailController.text,
                        passwordController.text
                      );
                    }, 
                    child: Text("Login")
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}