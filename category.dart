// category.dart
import 'place.dart';

class Category {
  String name;
  List<Place> places;

  Category({
    required this.name,
    this.places = const [],
  });

  // Add a method to add a new place to the category
  void addPlace(Place place) {
    places.add(place);
  }
}