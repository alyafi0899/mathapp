import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:google_fonts/google_fonts.dart';

class Enroll extends StatefulWidget {
  const Enroll({Key? key}) : super(key: key);

  @override
  State<Enroll> createState() => _Enroll();
}

class _Enroll extends State<Enroll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.fromLTRB(20, 80, 20, 20),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 42),
                child: Container(
                  constraints: const BoxConstraints.expand(
                    width: 800,
                    height: 235,
                  ),
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage("assets/Image_materi.jpg"),
                        fit: BoxFit.cover),
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
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 68,
                child: Text(
                  "Operasi Dasar Aritmetika",
                  style: GoogleFonts.poppins(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(0, 110, 127, 1)),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 400,
                child: Container(
                  padding: const EdgeInsets.fromLTRB(3, 0, 0, 0),
                  child: const Text(
                    "Halo sobat, kali ini kita akan latihan dasar perhitungan operasi aritmetika. Namun sebelum melangkah pada latihan, yuk kita cari tahu lebih dulu asal dan arti aritmetika itu sendiri.\n\nJadi aritmetika berasal dari kata arithmos yang berarti angka dalam bahasa Yunani. Meski berasal dari bahasa Yunani, sebenarnya aritmatika ini sudah ada jauh sebelum orang Yunani menemukan kata arithmos, lho. Bahkan, jauh sebelum orang menemukan angka. Jadi para sejarawan percaya kalau aritmatika itu sudah ada sejak 10.000 tahun lalu. Ketika orang-orang prasejarah mulai bertani, mereka mulai menggunakan aritmatika. Contohnya untuk menghitung hewan ternak, menghitung musim panen tiba, dan lainnya.\n\nNah, sobat semua tahu tidak? operasi aritmetika merupakan cabang ilmu matematika. Dasar dari operasi aritmatika adalah penjumlahan pengurangan, perkalian, dan pembagian. Sobat semua harus tahu bahwa, operasi dasar aritmatika digunakan di semua cabang matematika, entah itu geometri, aljabar, kalkulus, dan lainnya.",
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              /*SizedBox(
                width: double.infinity,
                height: 150,
                // ignore: avoid_unnecessary_containers
                child: Container(
                  child: const Text(
                    "◼️ Penjumlahan\n◼️ Pengurangan\n◼️ Perkalian\n◼️ Pembagian\n",
                    ,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),*/
              SizedBox(
                width: double.infinity,
                height: 400,
                child: Container(
                  padding: const EdgeInsets.fromLTRB(3, 0, 0, 0),
                  child: const Text(
                    " tahu lebih dulu asal dan arti aritmetika itu sendiri.\n\nJadi aritmetika berasal dari kata arithmos yang berarti angka dalam bahasa Yunani. Meski berasal dari bahasa Yunani, sebenarnya aritmatika ini sudah ada jauh sebelum orang Yunani menemukan kata arithmos, lho. Bahkan, jauh sebelum orang menemukan angka. Jadi para sejarawan percaya kalau aritmatika itu sudah ada sejak 10.000 tahun lalu. Ketika orang-orang prasejarah mulai bertani, mereka mulai menggunakan aritmatika. Contohnya untuk menghitung hewan ternak, menghitung musim panen tiba, dan lainnya.\n\nNah, sobat semua tahu tidak? operasi aritmetika merupakan cabang ilmu matematika. Dasar dari operasi aritmatika adalah penjumlahan pengurangan, perkalian, dan pembagian. Sobat semua harus tahu bahwa, operasi dasar aritmatika digunakan di semua cabang matematika, entah itu geometri, aljabar, kalkulus, dan lainnya.",
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              InkWell(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
                    // 2
                    constraints: const BoxConstraints.expand(
                      width: 250,
                      height: 70,
                    ),
                    child: const Text(
                      "Daftar Quiz",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(208, 107, 95, 1),
                      border: Border.all(
                          width: 2, color: Color.fromRGBO(208, 107, 95, 1)),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20.0)),
                      boxShadow: const [
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
                  Navigator.pushNamed(context, '/menu');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
