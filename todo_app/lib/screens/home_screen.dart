import 'package:flutter/material.dart';
import 'package:todo_app/models/task.dart';
import 'package:todo_app/screens/task_detail_screen.dart';

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
  void _addTask() {
    setState(() {
      tasks.add(
        Task(
          id: DateTime.now().millisecondsSinceEpoch.toString(),
          title: _titleController.text,
        ),
      );
    });

    _titleController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'AfriTodo',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
        ),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text("Mon Application de Todo \n Version 0.1"),
                  content: SingleChildScrollView(
                    child: Column(
                      children: [
                        Text(
                          "Les fonctionnalitée de mon Application sont : \n Ajouter des Taches \n Afficher la liste",
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            icon: Icon(Icons.info, color: Colors.white),
          ),
        ],
      ),

      body: Column(
        children: [
          Center(
            child: Text(
              'Bienvenue sur l\'application AfriTodo',
              style: Theme.of(
                context,
              ).textTheme.headlineMedium?.copyWith(color: Colors.blue),
            ),
          ),

          SizedBox(height: 25), // spacement
          // add task form
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
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

                // button pour ajouter.  la tache
                ElevatedButton(
                  onPressed: _addTask,
                  child: const Icon(Icons.add),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.all(12),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 40),

          // Liste de taches
          Expanded(
            child: tasks.isEmpty
                ? Center(child: Text('Aucune tâche à afficher.'))
                : ListView.builder(
                    padding: EdgeInsets.all(16),
                    itemCount: tasks.length,

                    itemBuilder: (context, index) {
                      final task = tasks[index];

                      return ListTile(
                        title: Text(task.title),
                        subtitle: Text(tasks[index].description ?? ''),
                        trailing: IconButton(
                          onPressed: () {
                            // Action pour marquer la tâche comme terminée
                            setState(() {
                              task.isCompleted = !task.isCompleted;
                            });
                          },
                          icon: task.isCompleted
                              ? Icon(Icons.check_circle)
                              : Icon(Icons.circle),
                          color: task.isCompleted ? Colors.green : Colors.grey,
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  TaskDetailScreen(task: task),
                            ),
                          );
                        },
                      );
                    },
                  ),
          ),
        ],
      ),

      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     // Action for the button
      //   },
      //   tooltip: 'Ajouter une tâche',
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}
