// login.dart

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKeyLogin = GlobalKey<FormState>();

  late String _loginEmail;
  late String _loginPassword;

  void _submitLogin() {
    if (_formKeyLogin.currentState!.validate()) {
      // Perform login logic (not secure, for educational purposes only)
      print('Login - Email: $_loginEmail, Password: $_loginPassword');
      // Add logic for actual authentication if needed
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKeyLogin,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Email'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
                onSaved: (value) => _loginEmail = value!,
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
                onSaved: (value) => _loginPassword = value!,
              ),
              ElevatedButton(
                onPressed: _submitLogin,
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
