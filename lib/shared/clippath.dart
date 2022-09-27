import 'package:flutter/material.dart';

class TsClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.quadraticBezierTo(
        size.width * 0.2, 0, size.width * 0.2, size.height * 0.2);
    path.lineTo(size.width * 0.2, size.height * 0.2);
    path.lineTo(size.width * 0.2, size.height * 0.6);
    path.quadraticBezierTo(
        size.width * 0.2, size.height, size.width * 0.4, size.height);
    path.lineTo(size.width * 0.3, size.height);
    path.lineTo(size.width * 0.6, size.height);
    path.quadraticBezierTo(
        size.width * 0.8, size.height, size.width * 0.8, size.height * 0.7);
    path.lineTo(size.width * 0.8, size.height * 0.7);
    path.lineTo(size.width * 0.8, size.height * 0.2);
    path.quadraticBezierTo(size.width * 0.8, 0, size.width, 0);

    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class CardOpen extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path_0 = Path();
    path_0.moveTo(size.width * 0.2765957, size.height * 0.4538177);
    path_0.cubicTo(
        size.width * 0.2765957,
        size.height * 0.4347146,
        size.width * 0.2982319,
        size.height * 0.4163943,
        size.width * 0.3367426,
        size.height * 0.4028867);
    path_0.cubicTo(
        size.width * 0.3752532,
        size.height * 0.3893791,
        size.width * 0.4274872,
        size.height * 0.3817905,
        size.width * 0.4819489,
        size.height * 0.3817905);
    path_0.lineTo(size.width * 0.4869511, size.height * 0.3817905);
    path_0.cubicTo(
        size.width * 0.5383277,
        size.height * 0.3815468,
        size.width * 0.5873872,
        size.height * 0.3742582,
        size.width * 0.6236319,
        size.height * 0.3614854);
    path_0.cubicTo(
        size.width * 0.6598787,
        size.height * 0.3487127,
        size.width * 0.6804277,
        size.height * 0.3314703,
        size.width * 0.6808809,
        size.height * 0.3134500);
    path_0.lineTo(size.width * 0.6808809, size.height * 0.6182158);
    path_0.lineTo(size.width * 0.4819489, size.height * 0.6182158);
    path_0.cubicTo(
        size.width * 0.4274872,
        size.height * 0.6182158,
        size.width * 0.3752532,
        size.height * 0.6106272,
        size.width * 0.3367426,
        size.height * 0.5971196);
    path_0.cubicTo(
        size.width * 0.2982319,
        size.height * 0.5836120,
        size.width * 0.2765957,
        size.height * 0.5652918,
        size.width * 0.2765957,
        size.height * 0.5461886);
    path_0.lineTo(size.width * 0.2765957, size.height * 0.4538177);
    path_0.close();
    path_0.moveTo(size.width * 0.4869511, size.height * 0.6182095);
    path_0.lineTo(size.width * 0.6808809, size.height * 0.6182158);
    path_0.lineTo(size.width * 0.6808809, size.height * 0.6865506);
    path_0.cubicTo(
        size.width * 0.6804213,
        size.height * 0.6685316,
        size.width * 0.6598702,
        size.height * 0.6512911,
        size.width * 0.6236277,
        size.height * 0.6385190);
    path_0.cubicTo(
        size.width * 0.5873830,
        size.height * 0.6257475,
        size.width * 0.5383234,
        size.height * 0.6184532,
        size.width * 0.4869511,
        size.height * 0.6182095);
    path_0.close();
    path_0.moveTo(size.width * 0.6808809, 0);
    path_0.lineTo(size.width * 6.594574, 0);
    path_0.lineTo(size.width * 6.594574, size.height);
    path_0.lineTo(size.width * 0.6808809, size.height);
    path_0.lineTo(size.width * 0.6808809, 0);
    path_0.close();

    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
