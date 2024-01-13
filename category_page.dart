//category_page.dart
import 'package:flutter/material.dart';
import 'place_list_page.dart';
import 'region.dart';

class CategoryPage extends StatelessWidget {
  final Region region;

  CategoryPage({
    required this.region,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Explore Categories')),
      body: ListView.builder(
        itemCount: region.categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 3,
              child: ListTile(
                title: Text(region.categories[index].name, style: TextStyle(fontSize: 18)),
                onTap: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PlaceListPage(category: region.categories[index]),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}