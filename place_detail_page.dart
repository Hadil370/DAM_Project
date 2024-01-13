// place_detail_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'place.dart';

class PlaceDetailPage extends StatefulWidget {
  final Place place;

  PlaceDetailPage({
    required this.place,
  });

  @override
  _PlaceDetailPageState createState() => _PlaceDetailPageState();
}

class _PlaceDetailPageState extends State<PlaceDetailPage> {
  
  double userRating = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.place.name)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2.0),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      widget.place.photoUrl,
                      width: 400,
                      height: 300,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Text(widget.place.description, style: TextStyle(fontSize: 18)),
              SizedBox(height: 16),
              RatingBar.builder(
                initialRating: userRating,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemSize: 30,
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  setState(() {
                    userRating = rating;
                  });
                },
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.thumb_up),
                        onPressed: () {
                          // Handle liking the place
                          setState(() {
                            widget.place.userLikes++;
                          });
                        },
                      ),
                      Text('Likes: ${widget.place.userLikes}'),
                    ],
                  ),
                  IconButton(
                    icon: Icon(Icons.comment),
                    onPressed: () => _showCommentDialog(context),
                  ),
                ],
              ),
              SizedBox(height: 16),
              if (widget.place.userComments.isNotEmpty) ...[
                Text('User Comments:',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                SizedBox(height: 8),
                for (var comment in widget.place.userComments)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Text(comment),
                  ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  void _showCommentDialog(BuildContext context) {
    String newComment = '';

    showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Text('Add a Comment'),
        content: TextField(
          onChanged: (value) {
            // Handle updating the new comment
            newComment = value;
          },
          decoration: InputDecoration(labelText: 'Comment'),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              // Handle adding the comment
              setState(() {
                widget.place.userComments.add('User: $newComment');
              });
              Navigator.of(context).pop();
            },
            child: Text('Add Comment'),
          ),
        ],
      ),
    );
  }
    Widget _buildLikesSection() {
    return Row(
      children: [
        IconButton(
          icon: Icon(Icons.thumb_up),
          onPressed: _handleLike,
        ),
        Text('Likes: ${widget.place.userLikes}'),
      ],
    );
  }

  void _handleLike() {
    setState(() {
      widget.place.userLikes++;
      // Consider moving the logic for updating likes into the Place class
      widget.place.updateLikes(widget.place.userLikes);
    });
  }
}
