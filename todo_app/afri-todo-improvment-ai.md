# AfriTodo - Application de Gestion de Tâches Flutter

![Version](https://img.shields.io/badge/version-1.0.0-blue.svg)
![Flutter](https://img.shields.io/badge/Flutter-3.0+-blue.svg)
![Dart](https://img.shields.io/badge/Dart-3.0+-blue.svg)
![License](https://img.shields.io/badge/license-MIT-green.svg)

Une application de gestion de tâches moderne et intuitive développée avec Flutter, conçue pour vous aider à organiser efficacement votre quotidien personnel et professionnel.

## 📱 Aperçu de l'Application

AfriTodo est une application complète de gestion de tâches qui combine simplicité d'utilisation et fonctionnalités avancées. Elle offre une interface utilisateur élégante et moderne, avec des animations fluides et une expérience utilisateur optimisée pour les appareils mobiles.

### Fonctionnalités Principales

- ✅ **Gestion complète des tâches** : Création, modification, suppression et marquage comme terminées
- 🎯 **Système de priorités** : Classification des tâches par niveau d'importance (Faible, Moyenne, Élevée, Urgente)
- 📂 **Catégorisation** : Organisation des tâches par catégories personnalisées
- 🔍 **Recherche avancée** : Recherche en temps réel dans les titres, descriptions et catégories
- 🎛️ **Filtres intelligents** : Filtrage par statut, priorité et catégorie
- 📊 **Statistiques détaillées** : Suivi de la progression avec indicateurs visuels
- 💾 **Persistance des données** : Sauvegarde automatique locale des tâches
- 🎨 **Interface moderne** : Design Material 3 avec animations fluides
- 📱 **Responsive** : Optimisé pour tous les formats d'écran
- 🌙 **Mode sombre** : Support automatique du thème sombre système

## 🏗️ Architecture de l'Application

L'application suit une architecture modulaire et maintenable, organisée selon les meilleures pratiques Flutter :



### Structure des Dossiers

```
afri_todo/
├── lib/
│   ├── main.dart                    # Point d'entrée de l'application
│   ├── models/
│   │   ├── task.dart               # Modèle de base (version originale)
│   │   └── task_improved.dart      # Modèle amélioré avec fonctionnalités avancées
│   ├── services/
│   │   └── task_service.dart       # Service de gestion des tâches et persistance
│   ├── screens/
│   │   ├── home_screen.dart        # Écran principal original
│   │   └── home_screen_improved.dart # Écran principal amélioré
│   └── widgets/
│       ├── task_item.dart          # Widget d'affichage d'une tâche
│       ├── add_task_dialog.dart    # Dialogue d'ajout de tâche
│       ├── edit_task_dialog.dart   # Dialogue de modification de tâche
│       ├── task_statistics.dart    # Widget des statistiques
│       └── filter_chips.dart       # Widget des filtres
├── pubspec.yaml                     # Configuration des dépendances
└── README.md                        # Documentation complète
```

### Composants Principaux

#### 1. Modèle de Données (Task)

Le modèle `Task` représente une tâche individuelle avec toutes ses propriétés et méthodes associées. La version améliorée inclut des fonctionnalités avancées comme la gestion des priorités, des catégories et de la persistance des données.

**Propriétés principales :**
- `id` : Identifiant unique de la tâche
- `title` : Titre de la tâche (obligatoire)
- `description` : Description détaillée (optionnelle)
- `isCompleted` : Statut de completion
- `createdAt` : Date de création
- `completedAt` : Date de completion (si applicable)
- `priority` : Niveau de priorité (énumération)
- `category` : Catégorie personnalisée (optionnelle)

**Méthodes utilitaires :**
- `markAsCompleted()` : Marque la tâche comme terminée
- `markAsIncomplete()` : Marque la tâche comme non terminée
- `toMap()` / `fromMap()` : Sérialisation pour la persistance
- `toJson()` / `fromJson()` : Conversion JSON
- `copyWith()` : Création d'une copie modifiée

#### 2. Service de Gestion (TaskService)

Le `TaskService` implémente le pattern Singleton pour gérer toutes les opérations liées aux tâches, incluant la persistance des données via SharedPreferences.

**Fonctionnalités principales :**
- Sauvegarde et chargement automatique des tâches
- Opérations CRUD (Create, Read, Update, Delete)
- Filtrage et tri avancés
- Calcul de statistiques
- Gestion des erreurs et de la robustesse

#### 3. Interface Utilisateur

L'interface utilisateur est construite avec des widgets Flutter modernes et réutilisables, suivant les principes du Material Design 3.

**Composants clés :**
- **HomeScreenImproved** : Écran principal avec gestion d'état avancée
- **TaskItem** : Widget personnalisé pour l'affichage des tâches
- **Dialogues modaux** : Interfaces d'ajout et de modification
- **Widgets de filtrage** : Chips interactifs pour le filtrage
- **Statistiques visuelles** : Indicateurs de progression et métriques

## 🚀 Installation et Configuration

### Prérequis

Avant d'installer l'application, assurez-vous d'avoir les éléments suivants installés sur votre système de développement :

- **Flutter SDK** version 3.0.0 ou supérieure
- **Dart SDK** version 3.0.0 ou supérieure
- **Android Studio** ou **Visual Studio Code** avec les extensions Flutter
- **Émulateur Android** ou **Simulateur iOS** (ou appareil physique)

### Installation du Projet

1. **Cloner le repository** (si applicable) ou créer un nouveau projet Flutter :
```bash
flutter create afri_todo
cd afri_todo
```

2. **Remplacer les fichiers** par les versions améliorées fournies dans cette documentation.

3. **Installer les dépendances** :
```bash
flutter pub get
```

4. **Vérifier la configuration** :
```bash
flutter doctor
```

### Configuration des Dépendances

Le fichier `pubspec.yaml` inclut les dépendances suivantes :

```yaml
dependencies:
  flutter:
    sdk: flutter
  shared_preferences: ^2.2.2  # Persistance des données locales
  cupertino_icons: ^1.0.6     # Icônes iOS

dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^3.0.0       # Analyse de code et linting
```

### Lancement de l'Application

1. **Démarrer un émulateur** ou connecter un appareil physique

2. **Lancer l'application** :
```bash
flutter run
```

3. **Pour une version de production** :
```bash
flutter build apk --release  # Android
flutter build ios --release  # iOS
```

## 📖 Guide d'Utilisation

### Interface Principale

L'écran principal d'AfriTodo présente une interface claire et intuitive organisée en plusieurs sections :

#### En-tête avec Statistiques

La partie supérieure de l'écran affiche un panneau de statistiques coloré qui fournit un aperçu instantané de votre productivité :

- **Total** : Nombre total de tâches créées
- **Terminées** : Nombre de tâches accomplies
- **En cours** : Tâches restant à faire
- **Urgentes** : Tâches marquées comme urgentes

Une barre de progression visuelle indique le pourcentage de tâches terminées, avec un code couleur qui reflète votre niveau de productivité (vert pour excellent, orange pour moyen, rouge pour amélioration nécessaire).

#### Système de Filtrage

Sous les statistiques, vous trouverez une rangée de filtres interactifs qui permettent d'affiner l'affichage des tâches :

**Filtres de statut :**
- **Toutes** : Affiche toutes les tâches sans distinction
- **En cours** : Montre uniquement les tâches non terminées
- **Terminées** : Affiche seulement les tâches accomplies

**Filtres de priorité :**
- **Faible** : Tâches de priorité basse (vert)
- **Moyenne** : Tâches de priorité standard (orange)
- **Élevée** : Tâches importantes (rouge)
- **Urgente** : Tâches critiques (violet)

#### Liste des Tâches

La section principale présente vos tâches sous forme de cartes élégantes, chacune contenant :

- **Indicateur de completion** : Cercle cliquable pour marquer comme terminé
- **Titre et description** : Informations principales de la tâche
- **Badges de priorité et catégorie** : Indicateurs visuels colorés
- **Date de création** : Horodatage relatif (aujourd'hui, hier, etc.)
- **Menu d'actions** : Options de modification et suppression

### Gestion des Tâches

#### Création d'une Nouvelle Tâche

Pour ajouter une nouvelle tâche, appuyez sur le bouton flottant "Nouvelle tâche" en bas à droite de l'écran. Un dialogue modal s'ouvrira avec les champs suivants :

1. **Titre** (obligatoire) : Nom descriptif de la tâche
2. **Description** (optionnelle) : Détails supplémentaires ou notes
3. **Catégorie** (optionnelle) : Classification personnalisée (ex: Travail, Personnel, Études)
4. **Priorité** : Sélection via des chips colorés

Le système valide automatiquement les données saisies et affiche des messages d'erreur en cas de champs manquants ou invalides.

#### Modification d'une Tâche

Pour modifier une tâche existante :

1. Appuyez sur le menu à trois points (⋮) de la tâche concernée
2. Sélectionnez "Modifier" dans le menu contextuel
3. Le dialogue de modification s'ouvre avec les données actuelles pré-remplies
4. Effectuez vos modifications et sauvegardez

#### Completion et Suppression

- **Marquer comme terminée** : Cliquez sur le cercle à gauche de la tâche ou sur la tâche elle-même
- **Supprimer** : Utilisez le menu contextuel et confirmez la suppression dans le dialogue de confirmation

### Fonctionnalités Avancées

#### Recherche en Temps Réel

L'icône de recherche dans la barre d'application active un champ de recherche qui filtre instantanément les tâches selon :
- Le titre de la tâche
- Le contenu de la description
- Le nom de la catégorie

La recherche est insensible à la casse et met à jour les résultats en temps réel pendant la saisie.

#### Tri des Tâches

L'icône de tri permet de réorganiser les tâches selon différents critères :
- **Date de création** : Plus récentes en premier (par défaut)
- **Priorité** : Urgentes en premier, puis par ordre décroissant
- **Alphabétique** : Tri par titre de A à Z
- **Statut** : Tâches en cours en premier, puis terminées

#### Actualisation des Données

Tirez vers le bas sur la liste des tâches pour déclencher une actualisation manuelle des données. Cette fonctionnalité est particulièrement utile si vous utilisez l'application sur plusieurs appareils ou si vous suspectez une désynchronisation.

## 🔧 Fonctionnalités Techniques

### Persistance des Données

AfriTodo utilise le package `shared_preferences` pour assurer la persistance locale des données. Cette approche présente plusieurs avantages :

**Avantages de SharedPreferences :**
- Stockage local sécurisé et rapide
- Pas de dépendance à une connexion internet
- Données conservées entre les sessions
- Performance optimale pour des données de taille modérée

**Implémentation technique :**
Le service `TaskService` gère automatiquement la sérialisation et désérialisation des tâches au format JSON. Chaque modification (ajout, suppression, modification) déclenche une sauvegarde automatique, garantissant que vos données sont toujours à jour.

### Gestion d'État

L'application utilise le système de gestion d'état intégré de Flutter (`StatefulWidget` et `setState`) pour une simplicité et une performance optimales. Cette approche convient parfaitement à une application de cette envergure et évite la complexité supplémentaire des solutions de gestion d'état externes.

**Avantages de cette approche :**
- Simplicité de compréhension et de maintenance
- Performance native Flutter
- Pas de dépendances externes supplémentaires
- Idéal pour des applications de taille petite à moyenne

### Animations et Transitions

L'application intègre des animations subtiles mais efficaces pour améliorer l'expérience utilisateur :

- **Animations d'apparition** : Transition en fondu lors du chargement
- **Feedback haptique** : Vibrations légères lors des interactions importantes
- **Transitions fluides** : Animations entre les états des tâches
- **Indicateurs de progression** : Barres animées pour les statistiques

### Responsive Design

L'interface s'adapte automatiquement aux différentes tailles d'écran grâce à :
- Utilisation de widgets flexibles (`Expanded`, `Flexible`)
- Marges et espacements proportionnels
- Typographie adaptative
- Support des orientations portrait et paysage

## 🎨 Personnalisation et Thèmes

### Système de Thèmes

AfriTodo implémente un système de thèmes complet basé sur Material Design 3 :

#### Thème Clair (par défaut)
- **Couleur principale** : Deep Purple (#673AB7)
- **Arrière-plan** : Gris très clair (#FAFAFA)
- **Cartes** : Blanc avec ombres subtiles
- **Texte** : Noir et gris foncé pour la lisibilité

#### Thème Sombre (automatique)
- **Couleur principale** : Deep Purple adapté
- **Arrière-plan** : Noir et gris foncé
- **Cartes** : Gris foncé avec contrastes appropriés
- **Texte** : Blanc et gris clair

#### Personnalisation des Couleurs

Les couleurs de priorité sont définies dans l'énumération `TaskPriority` :
- **Faible** : Vert (#4CAF50)
- **Moyenne** : Orange (#FF9800)
- **Élevée** : Rouge (#F44336)
- **Urgente** : Violet (#9C27B0)

### Modification du Thème

Pour personnaliser l'apparence de l'application, modifiez les propriétés dans le `ThemeData` du fichier `main.dart` :

```dart
theme: ThemeData(
  primarySwatch: Colors.deepPurple,  // Changez la couleur principale
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.deepPurple,    // Couleur de base du schéma
    brightness: Brightness.light,
  ),
  // Autres personnalisations...
),
```

## 📊 Métriques et Statistiques

### Calcul des Statistiques

Le système de statistiques d'AfriTodo fournit des métriques détaillées sur votre productivité :

#### Métriques de Base
- **Total des tâches** : Nombre cumulé de toutes les tâches créées
- **Tâches terminées** : Nombre de tâches marquées comme accomplies
- **Tâches en cours** : Nombre de tâches restant à faire
- **Tâches urgentes** : Nombre de tâches avec priorité urgente

#### Métriques Calculées
- **Taux de completion** : Pourcentage de tâches terminées (terminées/total × 100)
- **Progression visuelle** : Barre de progression colorée selon le taux de completion

#### Interprétation des Couleurs
- **Vert (80%+)** : Excellente productivité
- **Orange (50-79%)** : Productivité moyenne
- **Rouge (<50%)** : Amélioration nécessaire

### Utilisation des Statistiques

Ces métriques vous aident à :
- Évaluer votre productivité quotidienne
- Identifier les périodes de forte ou faible activité
- Ajuster vos objectifs et priorités
- Maintenir la motivation par la visualisation des progrès

## 🔍 Système de Filtrage et de Recherche

### Filtrage Avancé

Le système de filtrage d'AfriTodo permet une navigation efficace dans vos tâches :

#### Filtres de Statut
- **Toutes** : Vue complète sans restriction
- **En cours** : Focus sur les tâches à accomplir
- **Terminées** : Révision des accomplissements

#### Filtres de Priorité
Chaque niveau de priorité peut être filtré individuellement, permettant de se concentrer sur les tâches les plus importantes ou de réviser les tâches de faible priorité.

#### Combinaison de Filtres
Les filtres peuvent être combinés pour des vues très spécifiques (ex: tâches urgentes en cours, tâches terminées de priorité élevée).

### Recherche Textuelle

La fonction de recherche analyse trois champs :
1. **Titre de la tâche** : Recherche dans le nom principal
2. **Description** : Recherche dans les détails
3. **Catégorie** : Recherche dans les classifications

**Caractéristiques de la recherche :**
- Insensible à la casse
- Recherche partielle (sous-chaînes)
- Mise à jour en temps réel
- Combinable avec les filtres

### Tri Intelligent

Le système de tri offre quatre options stratégiques :

#### Date de Création (par défaut)
Affiche les tâches les plus récentes en premier, idéal pour suivre l'activité récente et maintenir la pertinence.

#### Priorité
Classe les tâches par ordre d'importance décroissante (Urgente → Élevée → Moyenne → Faible), parfait pour la gestion des priorités.

#### Alphabétique
Tri par titre de A à Z, utile pour retrouver rapidement une tâche spécifique dans une longue liste.

#### Statut
Sépare les tâches en cours des tâches terminées, facilitant la concentration sur les actions à entreprendre.

## 🛠️ Développement et Maintenance

### Architecture du Code

L'application suit les principes de développement Flutter recommandés :

#### Séparation des Responsabilités
- **Models** : Définition des structures de données
- **Services** : Logique métier et persistance
- **Screens** : Interfaces utilisateur principales
- **Widgets** : Composants réutilisables

#### Patterns Utilisés
- **Singleton** : Pour le service de gestion des tâches
- **Factory** : Pour la création d'objets Task depuis JSON/Map
- **Observer** : Via les StatefulWidget pour la réactivité

### Bonnes Pratiques Implémentées

#### Gestion des Erreurs
- Try-catch pour les opérations de persistance
- Validation des formulaires avec messages d'erreur
- Gestion gracieuse des états d'erreur

#### Performance
- Utilisation de `ListView.builder` pour les listes longues
- Lazy loading des données
- Optimisation des rebuilds avec des widgets spécialisés

#### Accessibilité
- Semantic labels pour les lecteurs d'écran
- Contrastes de couleurs respectant les standards
- Tailles de touch targets appropriées

### Tests et Qualité

#### Linting et Analyse
Le projet utilise `flutter_lints` pour maintenir la qualité du code :
- Respect des conventions Dart/Flutter
- Détection des problèmes potentiels
- Suggestions d'amélioration

#### Tests Recommandés
Pour une application de production, implémentez :
- **Tests unitaires** : Pour les modèles et services
- **Tests de widgets** : Pour les composants UI
- **Tests d'intégration** : Pour les flux utilisateur complets

### Évolutions Futures

#### Fonctionnalités Potentielles
- **Synchronisation cloud** : Backup et sync multi-appareils
- **Notifications** : Rappels et alertes programmées
- **Collaboration** : Partage de tâches entre utilisateurs
- **Rapports** : Analyses de productivité avancées
- **Thèmes personnalisés** : Couleurs et styles configurables
- **Import/Export** : Sauvegarde et restauration des données

#### Améliorations Techniques
- **Base de données locale** : Migration vers SQLite pour de meilleures performances
- **Architecture avancée** : Implémentation de BLoC ou Riverpod
- **Tests automatisés** : CI/CD avec tests complets
- **Internationalisation** : Support multi-langues

## 🤝 Contribution et Support

### Comment Contribuer

Si vous souhaitez contribuer à l'amélioration d'AfriTodo :

1. **Fork** le projet
2. **Créez une branche** pour votre fonctionnalité (`git checkout -b feature/nouvelle-fonctionnalite`)
3. **Committez** vos changements (`git commit -am 'Ajout d'une nouvelle fonctionnalité'`)
4. **Push** vers la branche (`git push origin feature/nouvelle-fonctionnalite`)
5. **Créez une Pull Request**

### Standards de Contribution

- Respectez les conventions de code existantes
- Ajoutez des tests pour les nouvelles fonctionnalités
- Documentez les changements importants
- Utilisez des messages de commit descriptifs

### Signalement de Bugs

Pour signaler un bug ou demander une fonctionnalité :
1. Vérifiez que le problème n'existe pas déjà
2. Créez un issue détaillé avec :
   - Description du problème
   - Étapes pour reproduire
   - Comportement attendu vs observé
   - Captures d'écran si applicable

## 📄 Licence et Crédits

### Licence

Ce projet est distribué sous licence MIT. Voir le fichier `LICENSE` pour plus de détails.

### Crédits

- **Développement** : Manus AI
- **Framework** : Flutter par Google
- **Icônes** : Material Design Icons
- **Inspiration** : Meilleures pratiques de la communauté Flutter

### Remerciements

Merci à la communauté Flutter pour les ressources, tutoriels et packages qui ont rendu ce projet possible.

---

**AfriTodo** - Organisez votre quotidien avec style et efficacité.

*Documentation générée par Manus AI - Version 1.0.0*

