import 'package:flutter/material.dart';

enum Priority { urgent, normal, low }

class TodoItem extends StatelessWidget {
  const TodoItem(this.text, this.priority, {super.key});

  final String text;
  final Priority priority;

  @override
  Widget build(BuildContext context) {
    var icon = Icons.cable_outlined;

    if (priority == Priority.urgent) {
      icon = Icons.ac_unit_outlined;
    }

    if (priority == Priority.normal) {
      icon = Icons.radar;
    }

    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          Icon(icon),
          const SizedBox(width: 12),
          Text(text),
        ],
      ),
    );
  }
}
