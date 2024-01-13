// place_list_page.dart
import 'package:flutter/material.dart';
import 'place_detail_page.dart';
import 'category.dart';
import 'place_add_page.dart'; // Import the PlaceAddPage

class PlaceListPage extends StatefulWidget {
  final Category category;

  PlaceListPage({
    required this.category,
  });

  @override
  _PlaceListPageState createState() => _PlaceListPageState();
}

class _PlaceListPageState extends State<PlaceListPage> {
  bool _isLoading = true;
  bool _hasError = false;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    try {
      // Simulate loading data (replace with your actual data loading logic)
      await Future.delayed(Duration(seconds: 2));

      // Set _isLoading to false to stop showing the loading indicator
      setState(() {
        _isLoading = false;
      });
    } catch (e) {
      // Set _hasError to true if an error occurs
      setState(() {
        _hasError = true;
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.category.name),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              _navigateToAddPlacePage(context);
            },
          ),
        ],
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    if (_isLoading) {
      return Center(
        child: CircularProgressIndicator(),
      );
    } else if (_hasError) {
      return Center(
        child: Text('Error loading places. Please try again.'),
      );
    } else if (widget.category.places.isEmpty) {
      return Center(
        child: Text('No places available for this category.'),
      );
    } else {
      return _buildPlaceList();
    }
  }

  Widget _buildPlaceList() {
    return ListView.builder(
      itemCount: widget.category.places.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 3,
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: ListTile(
            title: Text(widget.category.places[index].name, style: TextStyle(fontSize: 16)),
            onTap: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PlaceDetailPage(place: widget.category.places[index]),
                ),
              );
            },
          ),
        );
      },
    );
  }

  Future<void> _navigateToAddPlacePage(BuildContext context) async {
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PlaceAddPage(category: widget.category),
      ),
    );
    // You can add additional logic here to refresh the place list if needed
  }
}
