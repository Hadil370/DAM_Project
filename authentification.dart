// authentication.dart

import 'package:flutter/material.dart';
import 'login.dart';  // Import the login page

class AuthenticationPage extends StatefulWidget {
  @override
  _AuthenticationPageState createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  final _formKeySignUp = GlobalKey<FormState>();

  late String _signUpFirstName;
  late String _signUpLastName;
  late String _signUpEmail;
  late String _signUpPassword;

  void _submitSignUp() {
    if (_formKeySignUp.currentState!.validate()) {
      // Perform signup logic (not secure, for educational purposes only)
      print('Sign Up - First Name: $_signUpFirstName, Last Name: $_signUpLastName, Email: $_signUpEmail, Password: $_signUpPassword');

      // Navigate to login page after signup
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LoginPage(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Authentication'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Sign Up Form
            Form(
              key: _formKeySignUp,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(labelText: 'First Name'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your first name';
                      }
                      return null;
                    },
                    onSaved: (value) => _signUpFirstName = value!,
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Last Name'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your last name';
                      }
                      return null;
                    },
                    onSaved: (value) => _signUpLastName = value!,
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Email'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      }
                      return null;
                    },
                    onSaved: (value) => _signUpEmail = value!,
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Password'),
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
                    onSaved: (value) => _signUpPassword = value!,
                  ),
                  ElevatedButton(
                    onPressed: _submitSignUp,
                    child: Text('Sign Up'),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            // Login Link
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                );
              },
              child: Text("If you already have an account, click here to login"),
            ),
          ],
        ),
      ),
    );
  }
}