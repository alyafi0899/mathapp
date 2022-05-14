import 'package:flutter/material.dart';

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
        padding: EdgeInsets.fromLTRB(20, 100, 20, 20),
        child: Column(
          children: [
            InkWell(
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Container(
                  padding: const EdgeInsets.fromLTRB(0, 25, 0, 20),
                  // 2
                  constraints: const BoxConstraints.expand(
                    width: 70,
                    height: 70,
                  ),
                  child: Text(
                    "Quiz 1",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 2, color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFFBDBDBD),
                        spreadRadius: 0.0001,
                        blurRadius: 10,
                        offset: Offset(5, 5), // changes position of shadow
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
