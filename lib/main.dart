import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int x = 0;
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Text("Lottery App")
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Text("Lottery Winning Number is 4"),

            SizedBox(height: 30,),

            Center(
              child: Container(
                height: 200,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: x==4? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.done_all,
                      color: Colors.green,
                    ),

                    const SizedBox(
                      height: 20,
                    ),

                    Text(
                      "Congratulations! you have won the lottery! \n your Number is $x",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 12
                      ),
                    )
                  ],
                ):
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.error,
                      color: Colors.red,
                    ),

                    const SizedBox(
                      height: 20,
                    ),

                    Text(
                        "Better Luck Next Time your Number is $x \n try again",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 12
                      ),
                    )
                  ],
                )
              ),
            )
          ],
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              x = random.nextInt(10);
            });

          },

          child: const Icon(Icons.refresh),

        ),

      ),
    );
  }
}
