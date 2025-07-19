
// Une tache 
class Task {
  final String title;
  String? description;
  final bool isCompleted;
  DateTime dateCreated;
  DateTime? dateEcheance;

  Task({
    required this.title,
    this.description,
    this.isCompleted = false,
    DateTime? dateCreated,
    DateTime? dateEcheance,
  }) : dateCreated = dateCreated ?? DateTime.now();
  
}