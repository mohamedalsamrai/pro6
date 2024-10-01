import 'package:flutter/material.dart';

class GradientTextPainter extends CustomPainter {
  String temp;
  GradientTextPainter({required this.temp});

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

  @override
  void paint(Canvas canvas, Size size) {
    final textPainter = TextPainter(
      textDirection: TextDirection.ltr,
      text: TextSpan(
        text: '${temp}',
        style: TextStyle(
          fontFamily: "Poppins",
          fontSize: 150,
          fontWeight: FontWeight.w200,
          foreground: Paint()
            ..shader = LinearGradient(
              colors: [
                Color(0xFFFFFFFF),
                Color(0xB3FFFFFF),
                Color(0x66FFFFFF),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ).createShader(Rect.fromLTWH(0, 0, size.width, size.height)),
        ),
      ),
    );

    textPainter.layout();

    textPainter.paint(canvas, Offset(0, 0));
  }
}

class Temp extends StatelessWidget {
  String temp;
  Temp({super.key, required this.temp});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(177, 160),
      painter: GradientTextPainter(temp: temp),
    );
  }
}
