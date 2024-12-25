import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  SecondScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page"),
        backgroundColor: Colors.amber,
        foregroundColor: Colors.lightBlueAccent,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Back to Home Screen"),
        ),
      ),
    );
  }
}
