import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firebase = FirebaseFirestore.instance;
    CollectionReference items = firebase.collection('items');
    // CollectionReference users = firebase.collection('users');

    return Scaffold(
      //     body: Center(
      //   child: Text("tes"),
      // )
      body: FutureBuilder(
        future: items.get(),
        builder: (context, snapshot) {
          print(snapshot);
          if (snapshot.hasData) {
            var data = snapshot.data!.docs;
            return ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) => ListTile(
                      title: Text("${data[index]['harga']}"),
                      subtitle: Text("${data[index]['item']}"),
                    ));
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              TextEditingController hargaController = TextEditingController();
              TextEditingController itemController = TextEditingController();
              return AlertDialog(
                content: Column(
                  children: [
                    TextField(controller: itemController),
                    TextField(
                      controller: hargaController,
                    ),
                  ],
                ),
                actions: [
                  ElevatedButton(
                      onPressed: () async {
                        await items.add({
                          'harga': hargaController.text,
                          'item': int.parse(itemController.text)
                        });
                        setState(() {});
                        Navigator.pop(context);
                      },
                      child: Text("Tambah"))
                ],
              );
            },
          );
          // await users.add({'nama': 'tambah data', 'umur': 12});
          setState(() {});
        },
      ),
      // body: ListView.builder(itemBuilder: (context, index) => Text("${data[index]}"),),
    );
  }
}
