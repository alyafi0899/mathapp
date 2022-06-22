import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mathapp/styles.dart';


class Enroll extends StatefulWidget {
  const Enroll({Key? key}) : super(key: key);

  @override
  State<Enroll> createState() => _Enroll();
}

class _Enroll extends State<Enroll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 167, 85, 76),
        elevation: 0,
      ),
      body: ListView(
        children: [
          ClipPath(
            clipper: ClipPathClass(),
            child: Container(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: 
              Column(
                children: [
                  Image(image: AssetImage('assets/Materi-BD.png')),
                Container(
                  padding: const EdgeInsets.fromLTRB(24, 10, 24, 0),
                  child: Column(
                    children: [
                          SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: Text(
                            "Bangun Datar",
                            style: headlineMedium.copyWith(
                            color:Colors.white,
                            fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,
                          ),
              ),
              SizedBox(
                width: double.infinity,
                height: 100,
                child: Container(
                  padding: const EdgeInsets.fromLTRB(3, 0, 0, 0),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur , sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.",
                    textAlign: TextAlign.left,
                    style: Labellarge.copyWith(
                            color:Colors.white),
                 
                  ),
                  
                ),
              ),
                    ],
                  ),
                ),
              
                ],
              ),
              
              height: 400,
              // width: Get.width, tidak bisa digunakan
              color: Color.fromARGB(255, 167, 85, 76),
            ),
          )
        ],
      ),
        
      // SingleChildScrollView(
      //   child: Container(
      //     padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
      //     decoration: const BoxDecoration(
      //       color: Colors.white
      //     ),
      //     child: Column(
      //       children: [
      //         Container(
      //           padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
      //           child: Container(
      //             constraints: const BoxConstraints.expand(
      //               width: 800,
      //               height: 235,
      //             ),
              //     decoration: BoxDecoration(
              //       image: const DecorationImage(
              //           image: AssetImage('assets/Materi-BD.png'),
              //           fit: BoxFit.none),
              //       color: Colors.transparent,
              //       border: Border.all(width: 2, color: Colors.transparent),
              //       borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                  
              //     ),
              //   ),
              // ),
              // SizedBox(
              //   width: double.infinity,
              //   height: 100,
              //   child: Text(
              //     "Aritmatika",
              //     style: GoogleFonts.pangolin(fontSize: 36),
              //     textAlign: TextAlign.left,
              //   ),
              // ),
              // SizedBox(
              //   width: double.infinity,
              //   height: 100,
              //   child: Container(
              //     padding: const EdgeInsets.fromLTRB(3, 0, 0, 0),
              //     child: const Text(
              //       "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.",
              //       textAlign: TextAlign.left,
              //     ),
              //   ),
              // ),
      //         const SizedBox(
      //           width: double.infinity,
      //           height: 150,
      //           child: Text(
      //             "◼️ Aasidiaoiwmdpawmpwam\n◼️ Aasidiaoiwmdpawmpwam\n◼️ Aasidiaoiwmdpawmpwam\n◼️ Aasidiaoiwmdpawmpwam\n◼️ Aasidiaoiwmdpawmpwam",
      //             style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
      //             textAlign: TextAlign.left,
      //           ),
      //         ),
      //         InkWell(
      //           child: Container(
      //             padding: const EdgeInsets.all(10),
      //             child: Container(
      //               padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
      //               // 2
      //               constraints: const BoxConstraints.expand(
      //                 width: 250,
      //                 height: 70,
      //               ),
      //               child: const Text(
      //                 "Kerjakan Quiz",
      //                 textAlign: TextAlign.center,
      //                 style: TextStyle(color: Colors.black, fontSize: 22),
      //               ),
      //               decoration: BoxDecoration(
      //                 color: Colors.white,
      //                 border: Border.all(width: 2, color: Colors.black),
      //                 borderRadius:
      //                     const BorderRadius.all(Radius.circular(20.0)),
      //                 boxShadow: const [
      //                   BoxShadow(
      //                     color: Color(0xFFBDBDBD),
      //                     spreadRadius: 0.0001,
      //                     blurRadius: 10,
      //                     offset: Offset(5, 5), // changes position of shadow
      //                   ),
      //                 ],
      //               ),
      //             ),
      //           ),
      //           onTap: () {
      //             Navigator.pushNamed(context, '/daftar_quiz');
      //           },
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}

class ClipPathClass extends CustomClipper<Path> {

  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 64);
    path.quadraticBezierTo(
      size.width / 2, 
      size.height, 
      size.width, 
      size.height - 64
      );

    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}