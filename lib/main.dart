import 'package:flutter/material.dart';
import 'Dart:math';

void main() {
  runApp(MyApp());
}

// User Defined Function

// ignore: missing_return
int diceFaceUpdate(var diceFace) {
  // updates the dice face randomly between 1 and 6 inclusive.
  int randomFace = Random().nextInt(6) + 1;
  diceFace = randomFace;
  return diceFace;
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var leftDiceFace = 1;
  var rightDiceFace = 2;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Dice Roller'),
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FlatButton(
                    child: Image.asset('assets/images/dice$leftDiceFace.png'),
                    onPressed: () {
                      setState(() {
                        // calling dice face update function
                        leftDiceFace = diceFaceUpdate(leftDiceFace);
                      });
                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FlatButton(
                    child: Image.asset('assets/images/dice$rightDiceFace.png'),
                    onPressed: () {
                      setState(() {
                        // calling dice face update function
                        rightDiceFace = diceFaceUpdate(rightDiceFace);
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
