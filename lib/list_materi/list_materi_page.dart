import 'package:flutter/material.dart';
import 'package:mathapp/styles.dart';

class ListMateri extends StatefulWidget {
  const ListMateri({Key? key}) : super(key: key);

  @override
  State<ListMateri> createState() => _ListMateri();
}

class _ListMateri extends State<ListMateri> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
                image: AssetImage('assets/List materi (1).png'),
                alignment: Alignment.topCenter,
                // scale: 2.1,
                fit: BoxFit.fill),
          ),
          padding: const EdgeInsets.fromLTRB(20, 80, 20, 20),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                // ignore: avoid_unnecessary_containers
                child: Container(
                  child: Text(" OPERASI DASAR ARITMETIKA",
                      style: headlinelarge.copyWith(
                          color: const Color.fromARGB(255, 255, 255, 255))),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 180,
                // ignore: avoid_unnecessary_containers
                child: Container(
                  child: Text(
                    "berikut adalah materi singkat tentang Aritemtika",
                    style: bodylarge.copyWith(
                        color: const Color.fromARGB(255, 255, 255, 255)),
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
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                                image: AssetImage('assets/Icon-Aritmatika.png'),
                                alignment: Alignment.topCenter,
                                // scale: 2.1,
                                fit: BoxFit.fill),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Text(
                          "Penjumlahan",
                          textAlign: TextAlign.center,
                          style: headlinesmall.copyWith(
                              color: const Color.fromARGB(255, 0, 110, 127)),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          width: 2,
                          color: const Color.fromARGB(255, 0, 110, 127)),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20.0)),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/daftar_quiz');
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
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                                image: AssetImage('assets/IconBangundatar.png'),
                                alignment: Alignment.topCenter,
                                // scale: 2.1,
                                fit: BoxFit.fill),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Text(
                          "Pengurangan",
                          textAlign: TextAlign.center,
                          style: headlinesmall.copyWith(
                              color: const Color.fromARGB(255, 0, 110, 127)),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          width: 2,
                          color: const Color.fromARGB(255, 0, 110, 127)),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20.0)),
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
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/Icon-Bangun-Ruang.png'),
                                alignment: Alignment.topCenter,
                                // scale: 2.1,
                                fit: BoxFit.fill),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Text(
                          "Pembagian",
                          textAlign: TextAlign.center,
                          style: headlinesmall.copyWith(
                              color: const Color.fromARGB(255, 0, 110, 127)),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          width: 2,
                          color: const Color.fromARGB(255, 0, 110, 127)),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20.0)),
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
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/Icon-Bangun-Ruang.png'),
                                alignment: Alignment.topCenter,
                                // scale: 2.1,
                                fit: BoxFit.fill),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Text(
                          "Perkalian",
                          textAlign: TextAlign.center,
                          style: headlinesmall.copyWith(
                              color: const Color.fromARGB(255, 0, 110, 127)),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          width: 2,
                          color: const Color.fromARGB(255, 0, 110, 127)),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20.0)),
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
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/Icon-Bangun-Ruang.png'),
                                alignment: Alignment.topCenter,
                                // scale: 2.1,
                                fit: BoxFit.fill),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Text(
                          "Mix Operation",
                          textAlign: TextAlign.center,
                          style: headlinesmall.copyWith(
                              color: const Color.fromARGB(255, 0, 110, 127)),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          width: 2,
                          color: const Color.fromARGB(255, 0, 110, 127)),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20.0)),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/enroll');
                },
              ),
// --- Untuk buat footnote
              const SizedBox(
                height: 32,
              ),
              SizedBox(
                width: double.infinity,
                height: 150,
                child: Container(
                  padding: const EdgeInsets.fromLTRB(56, 32, 56, 0),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/Icon-question.png'),
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  child: Text(
                    "Pilih salah satu materi diatas untuk mulai belajar",
                    style: bodylarge.copyWith(
                        color: const Color.fromARGB(255, 0, 110, 127)),
                    textAlign: TextAlign.center,
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
