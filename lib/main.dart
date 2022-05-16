import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mathapp/enroll_quiz/daftar_quiz.dart';
import 'package:mathapp/enroll_quiz/enrol_quiz.dart';
import 'package:mathapp/list_materi/list_materi_page.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/home',
      routes: {
        '/home': (context) => MyHomePage(title: 'Notification'),
        '/list_materi': (context) => ListMateri(),
        '/enroll': (context) => Enroll(),
        '/daftar_quiz': (context) => DaftarQuiz(),
      },
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 275, 20, 20),
        child: Column(
          children: [
            InkWell(
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Container(
                  padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
                  // 2
                  constraints: const BoxConstraints.expand(
                    width: 300,
                    height: 80,
                  ),
                  child: Text(
                    "Material",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.pangolin(
                       color: Colors.white, fontSize: 28),
                  ),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 160, 188, 194), // #A0BCC2
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
              onTap: () {
                Navigator.pushNamed(context, '/list_materi');
              },
            ),
            InkWell(
              child: Container(
                padding: const EdgeInsets.all(30),
                child: Container(
                  padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
                  // 2
                  constraints: const BoxConstraints.expand(
                    width: 300,
                    height: 80,
                  ),
                  child: Text(
                    "Quiz",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.pangolin(
                      color: Color.fromARGB(255, 160, 188, 194), fontSize: 28 // #A0BCC2
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 2, 
                    color: Color.fromARGB(255, 160, 188, 194)), // #A0BCC2
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
              onTap: () {
                Navigator.pushNamed(context, '/list_materi');
              },
            ),
          ],
        ),
      ),
    );
  }
}
