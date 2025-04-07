import 'package:flutter/material.dart';

 
class AuthScreen extends StatefulWidget {
  static const String routes='/auth-screen';
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _isSignIn = true; // Toggle between Sign In and Sign Up

  // Controllers
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController(); // Only for Sign Up

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  _isSignIn ? "Sign In" : "Sign Up",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      // Name Field (Only for Sign Up)
                      if (!_isSignIn)
                        TextFormField(
                          controller: _nameController,
                          decoration: InputDecoration(
                            labelText: "Full Name",
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter your name";
                            }
                            return null;
                          },
                        ),
                      if (!_isSignIn) SizedBox(height: 10),
                      
                      // Email Field
                      TextFormField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          labelText: "Email",
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter your email";
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 10),

                      // Password Field
                      TextFormField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Password",
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value == null || value.length < 6) {
                            return "Password must be at least 6 characters";
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 20),

                      // Sign In / Sign Up Button
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            if (_isSignIn) {
                              print("Signing In: ${_emailController.text}");
                            } else {
                              print("Signing Up: ${_nameController.text}, ${_emailController.text}");
                            }
                          }
                        },
                        child: Text(_isSignIn ? "Sign In" : "Sign Up"),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),

                // Toggle Button
                TextButton(
                  onPressed: () {
                    setState(() {
                      _isSignIn = !_isSignIn; // Toggle state
                    });
                  },
                  child: Text(
                    _isSignIn ? "Don't have an account? Sign Up" : "Already have an account? Sign In",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
