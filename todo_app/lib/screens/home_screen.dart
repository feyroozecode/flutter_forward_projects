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
        title: const Text('AfriTodo'),
        backgroundColor: Colors.deepPurple,
      ),

      body: Column(
        children: [
          Center(
            child: Text(
              'Bienvenue sur l\'application AfriTodo',
              style: Theme.of(
                context,
              ).textTheme.headlineMedium?.copyWith(color: Colors.purple),
            ),
          ),

          SizedBox(height: 25),

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
                      return ListTile(
                        title: Text(tasks[index].title),
                        subtitle: Text(tasks[index].description ?? ''),
                        trailing: Icon(
                          tasks[index].isCompleted
                              ? Icons.check_circle
                              : Icons.circle,
                          color: tasks[index].isCompleted
                              ? Colors.green
                              : Colors.grey,
                        ),
                        onTap: () {
                          // Action pour marquer la tâche comme terminée
                          setState(() {
                            tasks[index].isCompleted =
                                !tasks[index].isCompleted;
                          });
                        },
                      );
                    },
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
