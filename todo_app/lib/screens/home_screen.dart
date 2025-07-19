import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AfriTodo'),
        backgroundColor: Colors.deepPurple,
        ),

      body: Column(
        children: [
          Center(
            child: Text(
              'Bienvenue sur l\'application AfriTodo',
              style: Theme.of(context).textTheme.headlineMedium,
            ),

            
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Action for the button
        },
        tooltip: 'Ajouter une tâche',
        child: const Icon(Icons.add),
      ),

    );
  }
}
