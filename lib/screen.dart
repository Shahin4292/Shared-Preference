import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  var nameController = TextEditingController();
  static const String KEYNAME = "name";
  var nameValue = "";

  @override
  void initState() {
    super.initState();
    getValue();
  }

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
                // var name = nameController.text.toString();
                var prefs = await SharedPreferences.getInstance();
                prefs.setString(
                    KEYNAME,
                    nameController.text
                        .toString()); // name are include not problem
              },
              child: Text("Saved")),
          SizedBox(height: 10),
          Text("Saved Value")
        ],
      ),
    );
  }

  void getValue() async {
    var prefs = await SharedPreferences.getInstance();
    var getName = prefs.setString(KEYNAME, nameController.text.toString());
  }
}
