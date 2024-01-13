// place_add_page.dart
import 'package:flutter/material.dart';
import 'region.dart';
import 'category.dart';
import 'place.dart';

class PlaceAddPage extends StatefulWidget {
  final Category category;

  PlaceAddPage({
    required this.category,
  });

  @override
  _PlaceAddPageState createState() => _PlaceAddPageState();
}

class _PlaceAddPageState extends State<PlaceAddPage> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();

  // Add other necessary controllers for handling image and other inputs

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add a Place')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Add Place in ${widget.category.name}'),
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: _descriptionController,
              decoration: InputDecoration(labelText: 'Description'),
            ),
            // Add other form elements for image, comments, etc.
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                _addPlace();
              },
              child: Text('Add Place'),
            ),
          ],
        ),
      ),
    );
  }

  void _addPlace() {
    // Handle adding the place to the category
    String name = _nameController.text;
    String description = _descriptionController.text;

    // Use the provided data to create a new place
    // You may need to modify this based on your Place class structure
    Place newPlace = Place(
      name: name,
      photoUrl: 'assets/default_image.jpg', // Replace with actual image data
      description: description,
    );

    // Add the new place to the category
    widget.category.addPlace(newPlace);

    // Optionally, you can save the data to persistent storage (e.g., SharedPreferences)

    // Navigate back to the previous screen
    Navigator.pop(context);
  }
}
