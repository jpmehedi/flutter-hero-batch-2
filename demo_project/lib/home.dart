
import 'package:flutter/material.dart';

enum Gender{
  Male,
  Female,
  Others
}

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // String url = "https://jsonplaceholder.typicode.com/users";
  // List users = [];
  // Future getUsers()async{
  //  final response =  await http.get(Uri.parse(url));
  //   if(response.statusCode == 200){
  //     setState(() {
  //        users = jsonDecode(response.body); 
  //     });
  //   }
  // }

  // @override
  // void initState() {
  //   getUsers();
  //   super.initState();
  // }


  var _gender = Gender.Male;
 
  bool _checkbox = false;

  Map<String, bool> items = {
    "Red": false,
    "Green": false,
    "Orange": false,
    "Pink": false
  };


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text("Fetch data from internet"),),
      // body: ListView.builder(
      //   itemCount: users.length,
      //   itemBuilder: (context, index){
      //     return ListTile(
      //       leading: CircleAvatar(
      //         child: Text("${users[index]["name"][0]}")
      //       ),
      //       title: Text("${users[index]["name"]}"),
      //       subtitle: Text("${users[index]["email"]}"),
      //       trailing: Text("${users[index]["address"]["city"]}"),
      //     );
      //   }
      // ),

        appBar: AppBar(title: Text("Radio Button and Checkobox"),),
        body: Column(
          children: [
            // ListTile(
            //   title: Text("Item 1"),
            //   leading: Checkbox(
            //     checkColor: Colors.orange,
            //     activeColor: Colors.red,
            //     value: _checkbox, 
            //     onChanged: (bool ?value){
            //       setState(() {
            //         _checkbox = value!;
            //       });
            //     }
            //   ),
            // ),
            ListView(
              shrinkWrap: true,
              children: items.keys.map((String? key) {
                return CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text(key!),
                  value: items[key], 
                  onChanged: (bool? value){
                    setState(() {
                      items[key] = value!;
                    });
                  }
                );
              }).toList(),
            )







            // ListTile(
            //   title: Text("Male"),
            //   leading: Radio(
            //     value: Gender.Male, 
            //     groupValue: _gender, 
            //     onChanged: (Gender? value){
            //       setState(() {
            //         print(value);
            //         _gender = value!;
            //       });
            //     }
            //   ),
            // ),
            // ListTile(
            //   title: Text("Female"),
            //   leading: Radio(
            //     value: Gender.Female, 
            //     groupValue: _gender, 
            //     onChanged: (Gender? value){
            //       setState(() {
            //         _gender = value!;
            //       });
            //     }
            //   ),
            // ),
            // ListTile(
            //   title: Text("Others"),
            //   leading: Radio(
            //     value: Gender.Others, 
            //     groupValue: _gender, 
            //     onChanged: (Gender? value){
            //       setState(() {
            //         _gender = value!;
            //       });
            //     }
            //   ),
            // )

          ],
        ),



    );
  }
}