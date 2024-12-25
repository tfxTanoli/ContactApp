import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ShowListView(),
    );
  }
}

class Info {
  String? name;
  int? age;
  String? city;

  Info({this.name, this.age, this.city});
}

class ShowListView extends StatefulWidget {
  _ShowListView createState() => _ShowListView();
}

class _ShowListView extends State<ShowListView> {
  List<Info> info = [
    Info(name: "Noman", age: 23, city: "Karachi"),
    Info(name: 'Faisal', age: 53, city: "Lahore"),
    Info(name: 'Ali', age: 33, city: "RawalPindi")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Showing Data In List View"),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: info.length,
              itemBuilder: (context, index) => ListTile(
                title: Text("Name ${info[index].name}"),
                subtitle:
                    Text("Age : ${info[index].age}  City ${info[index].city}"),
              ),
            ))
          ],
        ),
      ),
    );
  }
}

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: AddContact(),
//     );
//   }
// }

// class Contact {
//   String? name;
//   String? phoneNo;
//   Contact({this.name, this.phoneNo});
// }

// class AddContact extends StatefulWidget {
//   _AddContact createState() => _AddContact();
// }

// class _AddContact extends State<AddContact> {
//   List<Contact> contact = [
//     Contact(name: "Muhammad Usman", phoneNo: "0346 5617010"),
//     Contact(name: "Luqman", phoneNo: "0316 9205375")
//   ];
//   void addContact() {
//     setState(() {
//       contact.add(Contact(
//           name: "New Contact ${contact.length + 1}",
//           phoneNo: "0300 000000${contact.length + 1}"));
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Contact Application"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Expanded(
//               child: ListView.builder(
//                 itemCount: contact.length,
//                 itemBuilder: (context, index) => ListTile(
//                   title: Text(contact[index].name.toString()),
//                   subtitle: Text(contact[index].phoneNo.toString()),
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: addContact,
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }