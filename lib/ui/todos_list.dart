import 'package:flutter/material.dart';
import 'package:todo_bloc/data/model/todo.dart';
import 'package:todo_bloc/ui/todo.dart';

class TodosList extends StatelessWidget {
  final List<TodoItemModel> todos;

  const TodosList({super.key, required this.todos});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 18),
      decoration: BoxDecoration(
          color: Colors.blueAccent.shade100.withOpacity(0.2),
          borderRadius: BorderRadius.circular(12)),
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return TodoItem(todo: todos[index]);
        },
        separatorBuilder: (context, index) {
          return const Divider(
            height: 1,
          );
        },
      ),
    );
  }
}
