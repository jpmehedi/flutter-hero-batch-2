// To parse this JSON data, do
//
//     final todo = todoFromJson(jsonString);

import 'dart:convert';

Todo todoFromJson(String str) => Todo.fromJson(json.decode(str));

String todoToJson(Todo data) => json.encode(data.toJson());

class Todo {
    Todo({
        this.id,
        this.title,
        this.description
    });

    int? id;
    String? title;
    String? description;

    factory Todo.fromJson(Map<String, dynamic> todo) => Todo(
        id: todo["id"],
        title: todo["title"],
        description: todo["description"]
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description
    };
}
