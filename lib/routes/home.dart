import 'package:flutter/material.dart';
import 'package:todo_bloc/data/model/todo.dart';
import 'package:todo_bloc/ui/button.dart';
import 'package:todo_bloc/ui/todos_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<TodoItemModel> todos = [
    TodoItemModel(title: 'Go to school', done: true),
    TodoItemModel(done: false, title: 'Shopping'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 16),
            child: Text(
              'To Do',
            ),
          ),
          TextField(
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(left: 12),
                hintText: 'Start typing to search todo',
                hintStyle: const TextStyle(fontSize: 14),
                border: OutlineInputBorder(
                    gapPadding: 4,
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                        width: 1, color: Colors.blueAccent.shade100))),
          ),
          TodosList(todos: todos),
          const Button(
            title: 'Create new todo',
          )
        ],
      ),
    )));
  }
}
