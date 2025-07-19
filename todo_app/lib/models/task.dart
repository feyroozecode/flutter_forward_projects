
// Une tache 
class Task {
  final String id;
  final String title;
  String? description;
  final bool isCompleted;
  DateTime dateCreated;
  DateTime? dateEcheance;

  Task({
    required this.id,
    required this.title,
    this.description,
    this.isCompleted = false,
    DateTime? dateCreated,
    DateTime? dateEcheance,
  }) : dateCreated = dateCreated ?? DateTime.now();

}