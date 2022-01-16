import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:rest_todo/todo_model.dart';
import 'package:sqflite/sqflite.dart';

class DataBaseHelper {

  DataBaseHelper._privateConstructor();

  static final DataBaseHelper instance = DataBaseHelper._privateConstructor();

  static Database? _database;

  Future<Database> get database async => _database  ??= await _initDatabase();

  Future<Database> _initDatabase() async{
    Directory documentDirectory = await getApplicationSupportDirectory();
    String path = join(documentDirectory.path, 'todos.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }


  Future _onCreate(Database db, int version)async{
    await db.execute("""
      CREATE TABLE todos(
        id INTEGER PRIMARY KEY,
        title TEXT,
        description TEXT
      )"""
    );
  }



  Future<int> addTodos(Todo todo)async{

    Database db = await instance.database;
    return await db.insert('todos', todo.toJson());

  }

  Future<List<Todo>> getTodos()async{
    Database db = await instance.database;
    var todos = await db.query('todos', orderBy: "id");
    List<Todo> _todos = todos.isNotEmpty ? todos.map((todo) => Todo.fromJson(todo)).toList() : [];
    return _todos;
  }

  Future deleteTodo(int? id)async{
    Database db = await instance.database;

    return await db.delete("todos", where: 'id=?', whereArgs: [id]);
  }


 Future updateTodo(Todo todo)async{

   Database db = await instance.database;

   return await db.update(
     "todos", 
     todo.toJson(),
     where: "id=?",
     whereArgs: [todo.id]
     
  );

  }


}