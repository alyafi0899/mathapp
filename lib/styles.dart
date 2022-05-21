import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

const Color kprimeColor = Color.fromARGB(255, 0, 110, 127);
const Color ksecondColor = Color(0xfD06B5F);
const Color kwhiteColor = Color(0xffffffff);
const Color kblackColor = Color(0xff3A3A3A);
const Color kpinkColor = Color(0xffFF70A3);
const Color kgreyColor = Color(0xff8A959E);
const kbackground = LinearGradient(
  colors: [
    Color(0xff608EC6),
    Color(0xff352A7C),
  ],
);

TextStyle whiteStyle = GoogleFonts.poppins(
  color: kwhiteColor,
);

TextStyle blackStyle = GoogleFonts.poppins(
color: kwhiteColor
);

TextStyle bluekStyle = GoogleFonts.poppins(
  color: kprimeColor,
);
TextStyle greykStyle = GoogleFonts.poppins(
  color: kgreyColor,
);
TextStyle pinkkStyle = GoogleFonts.poppins(
  color: kpinkColor,
);
TextStyle boldStyle = GoogleFonts.poppins(
  fontWeight: FontWeight.w700,
);
TextStyle extraBoldStyle = GoogleFonts.poppins(
  color: kblackColor,
  fontWeight: FontWeight.w800,
);