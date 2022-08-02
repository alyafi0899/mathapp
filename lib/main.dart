import 'dart:js';

import 'package:flutter/material.dart';
import 'package:mathapp/enroll_quiz/daftar_quiz.dart';
import 'package:mathapp/enroll_quiz/enrol_quiz.dart';
import 'package:mathapp/list_materi/list_materi_page.dart';
import 'package:mathapp/enroll_quiz/daftar_quiz_operasi.dart';
import 'package:mathapp/enroll_quiz/detail_quiz.dart';
import 'package:mathapp/styles.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/home',
      routes: {
        '/home': (context) => const MyHomePage(title: 'Notification'),
        '/list_materi': (context) => const ListMateri(),
        '/enroll': (context) => const Enroll(),
        '/daftar_quiz': (context) => const DaftarQuiz(),
        '/menu': (context) => const Menu(),
        '/detail_quiz': (context) => const DetailQuiz(index: 5),
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
      debugShowCheckedModeBanner: false,
      //title: 'Flutter Demo',
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
          constraints: const BoxConstraints.expand(width: double.infinity),
          decoration: const BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
                image: AssetImage('assets/Dashboard.png'),
                alignment: Alignment.topCenter,
                // scale: 2.1,
                fit: BoxFit.fill),
          ),
          padding: const EdgeInsets.fromLTRB(0, 156, 0, 20),
          child: Column(
            children: [
              // Logo MtkApp 1
              Container(
                width: 178,
                height: 172,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage('assets/Logo MtkApp.png'),
                      alignment: Alignment.topCenter,
                      scale: 2.1,
                      fit: BoxFit.cover),
                ),
              ),
              SizedBox(
                height: 64,
              ),
              InkWell(
                child: Container(
                  padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
                  // 2
                  constraints: const BoxConstraints.expand(
                    width: 280,
                    height: 64,
                  ),
                  child: Text(
                    "Aritmetika",
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
                onTap: () {
                  Navigator.pushNamed(context, '/enroll');
                },
              ),
              SizedBox(
                height: 16,
              ),
              InkWell(
                child: Container(
                  padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
                  // 2
                  constraints: const BoxConstraints.expand(
                    width: 280,
                    height: 64,
                  ),
                  child: Text(
                    "Bangun Ruang",
                    textAlign: TextAlign.center,
                    style: headlinesmall.copyWith(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold),
                  ),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 209, 106, 95), // #A0BCC2
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
                onTap: () {
                  Navigator.pushNamed(context, '/menu');
                },
              ),
              SizedBox(
                height: 16,
              ),
              InkWell(
                child: Container(
                  padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
                  // 2
                  constraints: const BoxConstraints.expand(
                    width: 280,
                    height: 64,
                  ),
                  child: Text(
                    "Bangun Datar",
                    textAlign: TextAlign.center,
                    style: headlinesmall.copyWith(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold),
                  ),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 209, 106, 95), // #A0BCC2
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
                onTap: () {
                  Navigator.pushNamed(context, '/enroll');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
