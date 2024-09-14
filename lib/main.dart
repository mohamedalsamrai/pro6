import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro6/modl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int countA = 0;
  int countB = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.orange,
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Center(
            child: Text(
              "Point Counter",
              style: GoogleFonts.bangers(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.w300),
            ),
          ),
        ),
        body: Center(
            child: Column(
          children: [
            Image.asset(
              'images/p2.png',
              scale: 2.4,
            ),
            const SizedBox(
              height: 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Team A",
                        style: GoogleFonts.bangers(
                            color: Colors.white,
                            fontSize: 44,
                            fontWeight: FontWeight.w300),
                      ),
                      Text(
                        "$countA",
                        style: GoogleFonts.bangers(
                            color: Colors.white,
                            fontSize: 70,
                            fontWeight: FontWeight.w300),
                      ),
                      const SizedBox(
                        height: 200,
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            countA++;
                          });
                        },
                        child: Text(
                          "Add 1 Point",
                          style: GoogleFonts.bangers(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Team B",
                        style: GoogleFonts.bangers(
                            color: Colors.white,
                            fontSize: 44,
                            fontWeight: FontWeight.w300),
                      ),
                      Text(
                        "$countB",
                        style: GoogleFonts.bangers(
                            color: Colors.white,
                            fontSize: 70,
                            fontWeight: FontWeight.w300),
                      ),
                      const SizedBox(
                        height: 200,
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            countB++;
                          });
                        },
                        child: Text(
                          "Add 1 Point",
                          style: GoogleFonts.bangers(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        )),
      ),
    );
  }
}
