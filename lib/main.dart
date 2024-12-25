import 'package:flutter/material.dart';
import 'package:flutter_application_3/SecondScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  TextEditingController textField = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
        foregroundColor: Colors.black,
        backgroundColor: Colors.limeAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: textField,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Enter data to send"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SecondScreen(
                              data: textField.text,
                            )));
              },
              child: const Text("Click to route"),
            ),
          ],
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'dart:math';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: TextControllerDemo(),
//     );
//   }
// }

// class TextControllerDemo extends StatefulWidget {
//   _TextControllerDemo createState() => _TextControllerDemo();
// }

// class _TextControllerDemo extends State<TextControllerDemo> {
//   int number = 0;
//   void handle() {
//     if (int.tryParse(A.text)! > 5 ||
//         int.tryParse(B.text)! > 5 ||
//         int.tryParse(C.text)! > 5) {
//       A.text = '0';
//       B.text = '0';
//       C.text = '0';
//     }
//     number = Random().nextInt(9) + 1;
//     setState(() {
//       if (number >= 1 && number <= 3) {
//         A.text = (int.tryParse(A.text)! + 1).toString();
//       } else if (number >= 4 && number <= 6) {
//         B.text = (int.parse(B.text) + 1).toString();
//       } else {
//         C.text = (int.parse(C.text) + 1).toString();
//       }
//     });
//   }

//   TextEditingController A = TextEditingController(text: '0');
//   TextEditingController B = TextEditingController(text: '0');
//   TextEditingController C = TextEditingController(text: '0');

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Text Editing Controller Demo"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               "Random Number Generated Is $number",
//             ),
//             Row(
//               children: [
//                 Expanded(
//                   child: TextField(
//                     controller: A,
//                     decoration: InputDecoration(
//                       border: OutlineInputBorder(),
//                       hintText: '0',
//                     ),
//                   ),
//                 ),
//                 const SizedBox(width: 10),
//                 Expanded(
//                   child: TextField(
//                     controller: B,
//                     decoration: InputDecoration(
//                       border: OutlineInputBorder(),
//                       hintText: '0',
//                     ),
//                   ),
//                 ),
//                 const SizedBox(width: 10),
//                 Expanded(
//                   child: TextField(
//                     controller: C,
//                     decoration: InputDecoration(
//                       border: OutlineInputBorder(),
//                       hintText: '0',
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             ElevatedButton(
//               onPressed: handle,
//               child: const Center(
//                 child: Text("Click Here"),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }


// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: ShowListView(),
//     );
//   }
// }

// class Info {
//   String? name;
//   int? age;
//   String? city;

//   Info({this.name, this.age, this.city});
// }

// class ShowListView extends StatefulWidget {
//   _ShowListView createState() => _ShowListView();
// }

// class _ShowListView extends State<ShowListView> {
//   List<Info> info = [
//     Info(name: "Noman", age: 23, city: "Karachi"),
//     Info(name: 'Faisal', age: 53, city: "Lahore"),
//     Info(name: 'Ali', age: 33, city: "RawalPindi")
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Showing Data In List View"),
//       ),
//       body: Center(
//         child: Column(
//           children: [
//             Expanded(
//                 child: ListView.builder(
//               itemCount: info.length,
//               itemBuilder: (context, index) => ListTile(
//                 title: Text("Name ${info[index].name}"),
//                 subtitle:
//                     Text("Age : ${info[index].age}  City ${info[index].city}"),
//               ),
//             ))
//           ],
//         ),
//       ),
//     );
//   }
// }

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
