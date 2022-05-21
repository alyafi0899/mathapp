import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mathapp/enroll_quiz/daftar_quiz.dart';
import 'package:mathapp/enroll_quiz/enrol_quiz.dart';
import 'package:mathapp/list_materi/list_materi_page.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mathapp/styles.dart';

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
      body: Center(
        child: Container(
          constraints: BoxConstraints.expand(width: double.infinity),
          decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                  image: AssetImage('assets/Dashboard.png'),
                  alignment: Alignment.topCenter,
                  // scale: 2.1,
                  fit: BoxFit.fill),
            ),
          padding: EdgeInsets.fromLTRB(0, 156, 0, 20),
          child: Column(
            children: [
              // Logo MtkApp 1 
              Container(
                width: 178,
                height: 172,
                decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                  image: AssetImage('assets/Logo MtkApp.png'),
                  alignment: Alignment.topCenter,
                  scale: 2.1,
                  fit: BoxFit.cover),
            ),
              ),
              InkWell(
                child: Container(
                  padding: const EdgeInsets.fromLTRB(0, 64, 0, 0),
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
                    // 2
                    constraints: const BoxConstraints.expand(
                      width: 280,
                      height: 64,
                    ),
                    child: Text(
                      "Material",
                      textAlign: TextAlign.center,
                      style: blackStyle.copyWith(
                          color: kwhiteColor,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                         ),
                    ),
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 0, 110, 127), // #A0BCC2
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
                  padding: const EdgeInsets.all(16),
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
                    // 2
                    constraints: const BoxConstraints.expand(
                      width: 280,
                      height: 64,
                    ),
                    child: Text(
                      "Quiz",
                      textAlign: TextAlign.center,
                      style: headlinesmall.copyWith(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold
                      ),
                      
                    ),
                    decoration: BoxDecoration( 
                      color: Color.fromARGB(255, 208, 106, 95), // #A0BCC2
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
      ),
    );
  }
}
