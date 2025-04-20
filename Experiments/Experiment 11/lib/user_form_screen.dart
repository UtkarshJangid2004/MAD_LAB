import 'package:flutter/material.dart';

class UserFormScreen extends StatefulWidget {
  @override
  _UserFormScreenState createState() => _UserFormScreenState();
}

class _UserFormScreenState extends State<UserFormScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();

  final List<Map<String, dynamic>> users = [];

  void addUser() {
    String name = nameController.text.trim();
    String ageText = ageController.text.trim();

    if (name.isEmpty || ageText.isEmpty) {
      showSnackBar('Please fill in both fields');
      return;
    }

    int? age = int.tryParse(ageText);
    if (age == null) {
      showSnackBar('Age must be a number');
      return;
    }

    setState(() {
      users.add({'name': name, 'age': age});
      nameController.clear();
      ageController.clear();
    });
  }

  void deleteUser(int index) {
    setState(() {
      users.removeAt(index);
    });
  }

  void showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.redAccent,
      ),
    );
  }

  @override
  void dispose() {
    nameController.dispose();
    ageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Form'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'Enter Name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: ageController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter Age',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: addUser,
                child: Text('Add User'),
              ),
            ),
            SizedBox(height: 20),
            Divider(thickness: 2),
            SizedBox(height: 10),
            Expanded(
              child: users.isEmpty
                  ? Center(child: Text('No users added yet.'))
                  : ListView.builder(
                      itemCount: users.length,
                      itemBuilder: (context, index) {
                        final user = users[index];
                        return Card(
                          margin: EdgeInsets.symmetric(vertical: 6),
                          child: ListTile(
                            title: Text(user['name']),
                            subtitle: Text('Age: ${user['age']}'),
                            trailing: IconButton(
                              icon: Icon(Icons.delete, color: Colors.red),
                              onPressed: () => deleteUser(index),
                            ),
                          ),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
