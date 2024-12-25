import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final String data;
  SecondScreen({required this.data});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page"),
        backgroundColor: Colors.amber,
        foregroundColor: Colors.lightBlueAccent,
      ),
      body: Center(
        child: Column(
          children: [
            Text("Data received from home page is $data"),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Back to Home Screen"),
            )
          ],
        ),
      ),
    );
  }
}
