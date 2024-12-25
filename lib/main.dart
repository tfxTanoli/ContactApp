import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AddContact(),
    );
  }
}

class Contact {
  String? name;
  String? phoneNo;
  Contact({this.name, this.phoneNo});
}

class AddContact extends StatefulWidget {
  _AddContact createState() => _AddContact();
}

class _AddContact extends State<AddContact> {
  List<Contact> contact = [
    Contact(name: "Muhammad Usman", phoneNo: "0346 5617010"),
    Contact(name: "Luqman", phoneNo: "0316 9205375")
  ];
  void addContact() {
    setState(() {
      contact.add(Contact(
          name: "New Contact ${contact.length + 1}",
          phoneNo: "0300 000000${contact.length + 1}"));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact Application"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: contact.length,
                itemBuilder: (context, index) => ListTile(
                  title: Text(contact[index].name.toString()),
                  subtitle: Text(contact[index].phoneNo.toString()),
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addContact,
        child: const Icon(Icons.add),
      ),
    );
  }
}

