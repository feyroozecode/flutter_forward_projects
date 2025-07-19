import 'package:flutter/material.dart';
import 'package:todo_app/models/task.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  /// liste des taches 
  List<Task> tasks = [];

  TextEditingController _titleController = TextEditingController();

  // ajouter une tache 
  void _addTask(){
    setState((){
      tasks.add(Task(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        title: _titleController.text));
    });

    _titleController.clear();
  }

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
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: Colors.white,
              ),
            )),

            // add task form 
           Container(
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _titleController,
                    decoration: const InputDecoration(
                      labelText: 'Titre de la tâche',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ), 

              SizedBox(width: 8),

                // button pour ajouter.  ltache 
                ElevatedButton(
                  onPressed: _addTask,
                  child: Icon(Icons.add),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)
                    ),
                    padding: EdgeInsets.all(12)
                  )
                )
              ],
            )
           ),

            // Liste de taches
            

        
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
