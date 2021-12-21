import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String url = "https://jsonplaceholder.typicode.com/users";
  List users = [];
  Future getUsers()async{
   final response =  await http.get(Uri.parse(url));
    if(response.statusCode == 200){
      setState(() {
         users = jsonDecode(response.body); 
      });
    }
  }

  @override
  void initState() {
    getUsers();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Fetch data from internet"),),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index){
          return ListTile(
            leading: CircleAvatar(
              child: Text("${users[index]["name"][0]}")
            ),
            title: Text("${users[index]["name"]}"),
            subtitle: Text("${users[index]["email"]}"),
            trailing: Text("${users[index]["address"]["city"]}"),
          );
        }
      ),
    );
  }
}