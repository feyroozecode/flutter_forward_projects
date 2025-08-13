import 'package:flutter/material.dart';

class TaskDetailScreen extends StatefulWidget {
  @override
  createState() => TaskDetailScreenState();
}

class TaskDetailScreenState extends State<TaskDetailScreen> {
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(body: Center(child: Text("Details de la tache")));
  }
}
