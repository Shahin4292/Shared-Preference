import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Screen extends StatelessWidget {
  Screen({super.key});

  var nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: nameController,
            decoration: InputDecoration(
                labelText: "Name",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
          ),
          SizedBox(height: 20),
          ElevatedButton(
              onPressed: () async {
                var name = nameController.text.toString();
                var prefs = await SharedPreferences.getInstance();
              },
              child: Text("Saved")),
          SizedBox(height: 10),
          Text("Saved Value")
        ],
      ),
    );
  }
}
