import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
class FirebaseCRUD extends StatefulWidget {
  const FirebaseCRUD({ Key? key }) : super(key: key);

  @override
  _FirebaseCRUDState createState() => _FirebaseCRUDState();
}

class _FirebaseCRUDState extends State<FirebaseCRUD> {
   late TextEditingController _titleController;
  late TextEditingController _desCriptionController;
  bool isLoading = false;

  String? documentId;

  Future<void>createTodos()async{
    setState(() {
      isLoading = true;
    });
    CollectionReference todos =  FirebaseFirestore.instance.collection('todo');

    try{
      return todos.add({
      "title": _titleController.text,
      "description": _desCriptionController.text
      }).then((value) {
        print("Todo added successfully");    
        setState(() {
          _titleController.clear();
          _desCriptionController.clear();
          isLoading = false;
        });

      });

    }catch(err){
      print("Error: $err");
    }
  }

  List todos = [];

  Future<void> getTodos()async{
    CollectionReference _todos = FirebaseFirestore.instance.collection('todo');
      _todos.get().then((QuerySnapshot querySnapshot) {
        setState(() {
          todos = querySnapshot.docs;
        });
      });
    }


  Future deleteTodo(id)async{
    CollectionReference _todo = FirebaseFirestore.instance.collection('todo');
      _todo.doc(id).delete()
      .then((value) {
        print("Todo Deleted");
        setState(() {});
      })
      .catchError((error) {
        print("Failed to delete todo: $error");
      });
  }

  

  Future updateTodo(id, title, description)async{
    CollectionReference _todo = FirebaseFirestore.instance.collection('todo');
      _todo.doc(id)
      .update({
        "title": title,
        "description": description
      })
      .then((value) {
        print("Todo Update");
        setState(() {});
      })
      .catchError((error) {
        print("Failed to delete todo: $error");
      });
  }

  @override
  void initState() {
    _titleController = TextEditingController();
    _desCriptionController = TextEditingController();
    super.initState();
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Firebase CRUD"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
                TextField(
                  controller: _titleController,
                  decoration: InputDecoration(
                    hintText: "Title"
                  ),
                ),

                TextField(
                  controller: _desCriptionController,
                  decoration: InputDecoration(
                    hintText: "Desscription"
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child:isLoading ? CircularProgressIndicator()  : ElevatedButton(          
                        onPressed:() {
                          createTodos();
                        },
                        child: Text("Add"),
                      ),
                    ),
                    SizedBox(width: 30,),
                    Expanded(
                      child: ElevatedButton(          
                        onPressed:() {
                         updateTodo(
                            documentId,
                           _titleController.text,
                           _desCriptionController.text,
                         );
                        },
                        child: Text("Update"),
                      ),
                    ),
                  ],
                ), 

                Expanded(
                  child: FutureBuilder(
                    future: FirebaseFirestore.instance.collection('todo').get(),
                    builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot){
                      if(snapshot.hasError){
                        return Text("Something want to wrong!");
                      }

                      if(!snapshot.hasData){
                        return Text("Document dose not exists");
                      }

                      if(snapshot.connectionState == ConnectionState.done){
                        List<QueryDocumentSnapshot<Object?>> _todo = snapshot.data!.docs;
                        return ListView(
                          children: _todo.map((todo) {
                            return ListTile(
                              contentPadding: EdgeInsets.zero,
                              leading: CircleAvatar(
                                child: Icon(Icons.person),
                              ),
                              title: Text("${todo['title']}"),
                              subtitle: Text("${todo['description']}"),
                              trailing: Container(
                                width: 100,
                                child: Row(
                                  children: [
                                    IconButton(
                                      onPressed: (){
                                        deleteTodo(todo.id);
                                      }, 
                                      icon: Icon(Icons.delete, color: Colors.redAccent,),
                                    ),
                                    IconButton(
                                      onPressed: (){
                                        setState(() {
                                          documentId = todo.id;
                                          _titleController.text = todo['title'];
                                          _desCriptionController.text = todo['description'];
                                        });
                                      }, 
                                      icon: Icon(Icons.edit,),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }).toList(),
                        );
                      }
                      return Center(child: Text("Loding...."));
                    }
                  )
                ),

                // Expanded(
                //   child: ListView.builder(
                //     itemCount: todos.length,
                //     itemBuilder: (ctx, index){
                //       return  ListTile(
                //         contentPadding: EdgeInsets.zero,
                //         leading: CircleAvatar(
                //           child: Icon(Icons.person),
                //         ),
                //         title: Text("${todos[index]["title"]}"),
                //         subtitle: Text("${todos[index]["description"]}"),
                //         trailing: Container(
                //           width: 100,
                //           child: Row(
                //             children: [
                //               IconButton(
                //                 onPressed: (){
                               
                //                 }, 
                //                 icon: Icon(Icons.delete, color: Colors.redAccent,),
                //               ),
                //               IconButton(
                //                 onPressed: (){
                //                   setState(() {
                        
                //                   });
                //                 }, 
                //                 icon: Icon(Icons.edit,),
                //               ),
                //             ],
                //           ),
                //         ),
                //       );
                //     }
                //   )
                // ),
            ],
          ),
        ),
      ),
    );
  }
}