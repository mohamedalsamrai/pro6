import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFD2BCD5),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/p1.png',
            ),
            Center(
              child: boxr(),
            ),
          ],
        ),
      ),
    );
  }

  Container boxr() {
    return Container(
      child: Center(
        child: Text(
          'HAPPY\n BIRTHDAY',
          textAlign: TextAlign.center,
          style: GoogleFonts.fredoka(
              fontSize: 50,
              fontWeight: FontWeight.w800,
              color: Colors.white,
              height: 1.2),
        ),
      ),
      height: 180,
      width: 300,
    );
  }
}
