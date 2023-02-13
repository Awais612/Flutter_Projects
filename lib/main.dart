// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import "dart:math";

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 5;
  int rightDiceNumber = 1;

  void diceFaceFunction() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            //Flex define the space to be acquire by the the child widget relative to the other widgets in the body. It basically gives the ratio to the widgets. by default the flex sets to 1.
            //         flex: 2,
            child: TextButton(
              child: Image.asset('images/dice$leftDiceNumber.png'),
              onPressed: () {
                setState(
                  () {
                    diceFaceFunction();
                  },
                );
              },
            ),
          ),
          Expanded(
            child: TextButton(
              child: Image.asset("images/dice$rightDiceNumber.png"),
              onPressed: () {
                setState(
                  () {
                    diceFaceFunction();
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// class DicePage extends StatelessWidget {
// }
