import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro6/modl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2)),
                  child: ClipOval(
                    child: Image.asset(
                      'images/tharwat.png',
                      width: 240,
                      height: 240,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                "Mohammed Al-Samrai",
                style: GoogleFonts.pacifico(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 13,
              ),
              theCard(
                title: '07856121557',
                icon: Icon(Icons.phone),
              ),
              const SizedBox(
                height: 20,
              ),
              theCard(
                title: 'sffdvfc@gmail.com',
                icon: Icon(Icons.email),
              )
            ],
          ),
        ),
        backgroundColor: const Color(0xFF2B475E),
      ),
    );
  }
}
