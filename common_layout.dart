// common_layout.dart

import 'package:flutter/material.dart';

class CommonLayout extends StatelessWidget {
  final String title;
  final String description;
  final VoidCallback onPressed;
  final Widget destinationPage; 

  CommonLayout({
    required this.title,
    required this.description,
    required this.onPressed,
    required this.destinationPage, 
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              SizedBox(height: 20),
              Text(
                description,
                style: TextStyle(fontSize: 16, color: Colors.white),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => destinationPage,
                  ));
                },
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Icon(Icons.arrow_forward, color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
