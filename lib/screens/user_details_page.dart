import 'package:flutter/material.dart';

class UserDetailsPage extends StatelessWidget {
  final String username;
  final String name;
  final String age;
  final String gender;

  UserDetailsPage({
    required this.username,
    required this.name,
    required this.age,
    required this.gender,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Details'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Welcome, $username',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Name: $name',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Age: $age',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Gender: $gender',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height: 20),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Navigate to food details page
                        },
                        child: Text('Food'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Navigate to exercise details page
                        },
                        child: Text('Exercise'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Navigate to walk details page
                        },
                        child: Text('Walk'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Navigate to sleep time details page
                        },
                        child: Text('Sleep Time'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
