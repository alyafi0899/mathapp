import 'package:flutter/material.dart';
import 'package:mathapp/styles.dart';
//import 'dart:math';

//stful
class DetailQuiz extends StatefulWidget {
  final int index;
  //Generate random angka 
  //Random random = Random();
//_randomNumber1 = random.nextInt(100);

  const DetailQuiz({Key? key, required this.index}) : super(key: key);

  @override
  State<DetailQuiz> createState() => _DetailQuizState();
}

class _DetailQuizState extends State<DetailQuiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kprimeColor,
        ),
        body: Container(
          child: Text("Quiz ${widget.index}"),
        ));
  }
}
