import 'package:flutter/material.dart';

class TCusteomCurvedEdges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);

    final fristCurve = Offset(0, size.height - 20);
    final lasstCurve = Offset(30, size.height - 20);
    path.quadraticBezierTo(
        fristCurve.dx, fristCurve.dy, lasstCurve.dx, lasstCurve.dy);


    final scendfristCurve = Offset(0, size.height-20);
    final secndlasstCurve = Offset(size.width-30, size.height-20);
    path.quadraticBezierTo(
        scendfristCurve.dx, scendfristCurve.dy, secndlasstCurve.dx, secndlasstCurve.dy);    

     final thirdfristCurve = Offset(size.width, size.height-20);
    final thridlasstCurve = Offset(size.width, size.height);
    path.quadraticBezierTo(
        thirdfristCurve.dx, thirdfristCurve.dy, thridlasstCurve.dx, thridlasstCurve.dy);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
