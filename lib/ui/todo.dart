import 'package:flutter/material.dart';
import 'package:todo_bloc/data/model/todo.dart';

class TodoItem extends StatelessWidget {
  final TodoItemModel todo;

  const TodoItem({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Expanded(
            child: Text(
          todo.title,
          overflow: TextOverflow.ellipsis,
          maxLines: 3,
          style: TextStyle(
              color: todo.done ? Colors.grey : Colors.black,
              decoration:
                  todo.done ? TextDecoration.lineThrough : TextDecoration.none),
        )),
        Checkbox(value: todo.done, onChanged: (val) => {})
      ]),
    );
  }
}
