import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color putih = const Color(0xffFFFFFF);
Color greyColor = const Color(0xff6F6F6F);
Color biru = const Color(0xff2787BD);
Color birumuda = const Color(0xffC1DDED);

const white = Color.fromRGBO(255, 255, 255, 1);
const blue = Color.fromRGBO(39, 135, 189, 1);
const bluelight = Color.fromRGBO(193, 221, 237, 1);


LinearGradient linearGradient = const LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
    colors: [Color(0xff2787BD), Color(0xff00BCC8)]);

TextStyle blueTextStyle = GoogleFonts.roboto(
  color: blue,
);
TextStyle whiteTextStyle = GoogleFonts.roboto(
  color: white,
);

FontWeight medium = FontWeight.w700;

// style: whiteTextStyle.copyWith(
//   fontWeight: medium,
//   fontSize: 8,
// ),
    // => Untuk text style


