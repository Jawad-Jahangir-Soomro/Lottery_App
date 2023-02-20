import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int x = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Lottery App"),
        ),
        body: SafeArea(
          child: Center(
            child: Text(
                x.toString(),
              style: const TextStyle(
                fontSize: 50,
              ),
            ),
          ),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: (){

            setState(() {
              x++;
            });

            print("Pressed");
            print(x);
          },
          child: const Icon(Icons.add),
        ),

      ),
    );
  }
}
