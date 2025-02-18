import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(children: [
      TextField(),
      ElevatedButton(onPressed: (){}, child: Text("Saved"))
    ],),);
  }
}
