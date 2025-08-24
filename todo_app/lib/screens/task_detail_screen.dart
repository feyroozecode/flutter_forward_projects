import 'package:flutter/material.dart';
import 'package:todo_app/models/task.dart';

class TaskDetailScreen extends StatefulWidget {
  TaskDetailScreen({required this.task});
  Task task;

  @override
  createState() => TaskDetailScreenState();
}

class TaskDetailScreenState extends State<TaskDetailScreen> {
  @override
  Widget build(BuildContext ctx) {
    final task = widget.task;

    return Scaffold(
      appBar: AppBar(title: Text("Details ${task.title}")),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              widget.task.title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              task.description ?? '',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            task.isCompleted = !task.isCompleted;
          });
        },
        child: task.isCompleted
            ? Icon(Icons.check_circle, color: Colors.green)
            : Icon(Icons.circle, color: Colors.grey),
      ),
    );
  }
}
