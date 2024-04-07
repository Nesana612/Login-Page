import 'package:flutter/material.dart';
import 'user_details_page.dart';
import 'sign_up_page.dart';

class PatientLoginScreen extends StatefulWidget {
  @override
  _PatientLoginScreenState createState() => _PatientLoginScreenState();
}

class _PatientLoginScreenState extends State<PatientLoginScreen> {
  final Map<String, Map<String, String>> users = {
    'user1': {
      'password': '123',
      'name': 'sam',
      'age': '30',
      'gender': 'Male',
      'maritalStatus': 'Single',
      'occupation': 'Engineer',
    },
    'user2': {
      'password': 'password2',
      'name': 'Jane Smith',
      'age': '25',
      'gender': 'Female',
      'maritalStatus': 'Married',
      'occupation': 'Doctor',
    },
    // Add more default usernames and details here
  };

  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  String _errorMessage = '';
  String _loggedInUser = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Patient Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Username',
                prefixIcon: Icon(Icons.person),
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: Icon(Icons.lock),
              ),
              obscureText: true,
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: _login,
              child: Text('Login'),
            ),
            SizedBox(height: 10.0),
            Text(
              _errorMessage,
              style: TextStyle(color: Colors.red),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: _forgotPassword,
                  child: Text('Forgot Password?'),
                ),
                Text('|'),
                TextButton(
                  onPressed: _signUp,
                  child: Text('Sign Up'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _login() {
    String username = _usernameController.text;
    String password = _passwordController.text;

    if (users.containsKey(username) && users[username]!['password'] == password) {
      setState(() {
        _loggedInUser = username;
      });

      // Navigate to next page
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => UserDetailsPage(
          username: username,
          name: users[username]!['name']!,
          age: users[username]!['age']!,
          gender: users[username]!['gender']!,
        )),
      );
    } else {
      setState(() {
        _errorMessage = 'Wrong username or password.';
      });
    }
  }

  void _forgotPassword() {
    // Implement forgot password functionality
    print('Forgot Password');
  }

  void _signUp() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SignUpPage()),
    );
  }
}
