import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:rest_todo/sqlite_crud.dart';

Future<void> main() async{
   await init();
  runApp(MyApp());
}

Future init()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SqLiteTodo(),
    );
  }
}

