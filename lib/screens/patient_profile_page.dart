import 'package:flutter/material.dart';
import 'user_details_page.dart';

class PatientProfilePage extends StatefulWidget {
  @override
  _PatientProfilePageState createState() => _PatientProfilePageState();
}

class _PatientProfilePageState extends State<PatientProfilePage> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _ageController = TextEditingController();
  TextEditingController _genderController = TextEditingController();
  TextEditingController _maritalStatusController = TextEditingController();
  TextEditingController _occupationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Patient Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Patient Name:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter patient name',
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Age:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: _ageController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter age',
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Gender:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: _genderController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter gender',
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Marital Status:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: _maritalStatusController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter marital status',
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Occupation:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: _occupationController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter occupation',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _saveProfile,
              child: Text('Save Profile'),
            ),
          ],
        ),
      ),
    );
  }

  void _saveProfile() {
    String name = _nameController.text;
    String age = _ageController.text;
    String gender = _genderController.text;
    String maritalStatus = _maritalStatusController.text;
    String occupation = _occupationController.text;

    // Implement logic to save the profile details
    print('Name: $name');
    print('Age: $age');
    print('Gender: $gender');
    print('Marital Status: $maritalStatus');
    print('Occupation: $occupation');

    // You can add further logic here, such as saving to a database
    // or navigating to another page after saving.

    // Navigate to user details page after saving
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => UserDetailsPage(
        username: name,
        name: name,
        age: age,
        gender: gender,
      )),
    );
  }
}
