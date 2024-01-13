import 'package:shared_preferences/shared_preferences.dart';

class Place {
  final String name;
  final String photoUrl;
  final String description;
  int userLikes;
  List<String> userComments;

  Place({
    required this.name,
    required this.photoUrl,
    required this.description,
    this.userLikes = 0,
    this.userComments = const [],
  });

  factory Place.fromJson(Map<String, dynamic> json) {
    return Place(
      name: json['name'],
      photoUrl: json['photoUrl'],
      description: json['description'],
      userLikes: json['userLikes'] ?? 0,
      userComments: List<String>.from(json['userComments'] ?? []),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'photoUrl': photoUrl,
      'description': description,
      'userLikes': userLikes,
      'userComments': userComments,
    };
  }

  Future<void> saveData() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setInt('likes_$name', userLikes);
      await prefs.setStringList('comments_$name', userComments);
    } catch (e) {
      print('Error saving data: $e');
    }
  }

  Future<void> retrieveData() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      userLikes = prefs.getInt('likes_$name') ?? 0;
      userComments = prefs.getStringList('comments_$name') ?? [];
    } catch (e) {
      print('Error retrieving data: $e');
    }
  }

  Place updateLikes(int newLikes) {
    return Place(
      name: name,
      photoUrl: photoUrl,
      description: description,
      userLikes: newLikes,
      userComments: userComments,
    );
  }

  Place addComment(String comment) {
    return Place(
      name: name,
      photoUrl: photoUrl,
      description: description,
      userLikes: userLikes,
      userComments: [...userComments, comment],
    );
  }
}
