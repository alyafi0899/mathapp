import 'package:flutter/material.dart';
import 'package:mathapp/enroll_quiz/daftar_quiz.dart';
import 'package:mathapp/enroll_quiz/enrol_quiz.dart';
import 'package:mathapp/list_materi/list_materi_page.dart';
import 'package:mathapp/popup/popup.dart';
import 'package:mathapp/styles.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/home',
      routes: {
        '/home': (context) => const MyHomePage(title: 'Notification'),
        '/list_materi': (context) => const ListMateri(),
        '/enroll': (context) => Enroll(),
        '/daftar_quiz': (context) => DaftarQuiz(),
        '/popup': (context) => Popupmesseges(),
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
              width: double.infinity,
              height: 40,
              child: Container(
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.",
                  style: bodylarge.copyWith(
                      color: Color.fromARGB(255, 255, 255, 255)),
                  textAlign: TextAlign.left,
                ),
              ),
            ),

               InkWell(
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Container(
                  padding: const EdgeInsets.fromLTRB(30, 10, 10, 10),
                  // 2
                  constraints: const BoxConstraints.expand(
                    width: 280,
                    height: 64,
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 28,
                        width: 28,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage('assets/Icon-Aritmatika.png'),
                              alignment: Alignment.topCenter,
                              // scale: 2.1,
                              fit: BoxFit.fill),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        "Aritmatika",
                        textAlign: TextAlign.center,
                        style: headlinesmall.copyWith(
                            color: Color.fromARGB(255, 0, 110, 127)),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        width: 2, color: Color.fromARGB(255, 0, 110, 127)),
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/popup');
              },
            ),

            InkWell(
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Container(
                  padding: const EdgeInsets.fromLTRB(30, 10, 10, 10),
                  // 2
                  constraints: const BoxConstraints.expand(
                    width: 280,
                    height: 64,
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 28,
                        width: 28,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage('assets/IconBangundatar.png'),
                              alignment: Alignment.topCenter,
                              // scale: 2.1,
                              fit: BoxFit.fill),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        "Bangun Datar",
                        textAlign: TextAlign.center,
                        style: headlinesmall.copyWith(
                            color: Color.fromARGB(255, 0, 110, 127)),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        width: 2, color: Color.fromARGB(255, 0, 110, 127)),
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/enroll');
              },
            ),
            InkWell(
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Container(
                  padding: const EdgeInsets.fromLTRB(30, 10, 10, 10),
                  // 2
                  constraints: const BoxConstraints.expand(
                    width: 280,
                    height: 64,
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 28,
                        width: 28,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage('assets/Icon-Bangun-Ruang.png'),
                              alignment: Alignment.topCenter,
                              // scale: 2.1,
                              fit: BoxFit.fill),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        "Bangun Ruang",
                        textAlign: TextAlign.center,
                        style: headlinesmall.copyWith(
                            color: Color.fromARGB(255, 0, 110, 127)),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        width: 2, color: Color.fromARGB(255, 0, 110, 127)),
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
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
