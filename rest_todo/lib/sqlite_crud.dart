import 'dart:math';

import 'package:flutter/material.dart';
import 'package:rest_todo/database_helper.dart';
import 'package:rest_todo/todo_model.dart';

class SqLiteTodo extends StatefulWidget {
  const SqLiteTodo({ Key? key }) : super(key: key);

  @override
  State<SqLiteTodo> createState() => _SqLiteTodoState();
}

class _SqLiteTodoState extends State<SqLiteTodo> {
  late TextEditingController _titleController;
  late TextEditingController _desCriptionController;

  int? _id;

    @override
  void initState() {
    _titleController = TextEditingController();
    _desCriptionController = TextEditingController();
    super.initState();
  }

  Random _random = Random();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("RestAPI CRUD"),
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
                      child: isLoading ? CircularProgressIndicator() : ElevatedButton(          
                        onPressed:()async {
                          setState(() {
                            isLoading = true;
                          });
                         final todo = Todo(
                           id: _random.nextInt(100),
                           title: _titleController.text,
                           description: _desCriptionController.text
                         );
                         await DataBaseHelper.instance.addTodos(todo);
                         setState(() {
                           isLoading = false;
                         });
                        },
                        child: Text("Add"),
                      ),
                    ),
                    SizedBox(width: 30,),
                    Expanded(
                      child: isLoading ? CircularProgressIndicator() : ElevatedButton(          
                        onPressed:()async {
                          final todo = Todo(
                            id: _id,
                            title: _titleController.text,
                            description: _desCriptionController.text
                          );
                          setState(() {
                            isLoading = true;
                          });
                          await DataBaseHelper.instance.updateTodo(todo);
                          setState(() {
                            isLoading = false;
                          });
                        },
                        child: Text("Update"),
                      ),
                    ),
                  ],
                ), 

                Expanded(
                  child: FutureBuilder(
                    future: DataBaseHelper.instance.getTodos(),
                    builder: (BuildContext context, AsyncSnapshot<List<Todo>> snapshot){
                      if(snapshot.hasError){
                        return Text("Error");
                      }
                      return snapshot.data!.isEmpty ? Text("No data found") : ListView(
                        children: snapshot.data!.map((Todo todo) {
                          return ListTile(
                            leading: IconButton(
                              onPressed: (){
                                setState(() {
                                  _id = todo.id!;
                                  _titleController.text = todo.title!;
                                  _desCriptionController.text = todo.description!;
                                });
                              }, 
                              icon: Icon(Icons.edit)
                            ),
                            title:  Text(todo.title!),
                            subtitle: Text(todo.description!),
                            trailing: isLoading ? CircularProgressIndicator() : IconButton(
                              onPressed: ()async{
                                setState(() {
                                  isLoading = true;
                                });
                                await DataBaseHelper.instance.deleteTodo(todo.id);
                                setState(() {
                                  isLoading = false;
                                });
                              }, 
                              icon: Icon(Icons.delete, color: Colors.red,)
                            ),
                          );
                        }).toList(),
                      );
                    }
                  )
                ),
            ],
          ),
        ),
      ),
    );
  }
}