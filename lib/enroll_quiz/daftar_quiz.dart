import 'package:flutter/material.dart';
import 'package:mathapp/enroll_quiz/detail_quiz.dart';

class DaftarQuiz extends StatefulWidget {
  const DaftarQuiz({Key? key}) : super(key: key);

  @override
  State<DaftarQuiz> createState() => _DaftarQuiz();
}

class _DaftarQuiz extends State<DaftarQuiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: EdgeInsets.only(top: 20, left: 20, right: 20),
      child: GridView.count(
        crossAxisCount: 3,
        children: List.generate(10, (index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailQuiz(
                              index: index + 1,
                            )));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 2, color: Colors.black),
                  borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xFFBDBDBD),
                      spreadRadius: 0.0001,
                      blurRadius: 10,
                      offset: Offset(5, 5), // changes position of shadow
                    ),
                  ],
                ),
                child: Center(child: Text("Quiz ${index + 1}")),
              ),
            ),
          );
        }),
      ),
    ));
  }
}
