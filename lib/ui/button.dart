import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String title;

  const Button({super.key, required this.title});

  void onPress() {}

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 48)),
      child: Text(title),
    );
  }
}
