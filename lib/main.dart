import 'package:flutter/material.dart';


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
    Size sizee = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.orange,
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Center(
            child: Text(
              "Point Counter",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.w300,
                  fontFamily: "Bangers"),
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
            SizedBox(height: sizee.height * 0.075),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "Team A",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 44,
                            fontWeight: FontWeight.w300,
                            fontFamily: "Bangers"),
                      ),
                      Text(
                        "$countA",
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 70,
                            fontWeight: FontWeight.w300,
                            fontFamily: "Bangers"),
                      ),
                      SizedBox(height: sizee.height * 0.23),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            countA++;
                          });
                        },
                        child: const Text(
                          "Add 1 Point",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w300,
                              fontFamily: "Bangers"),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "Team B",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 44,
                            fontWeight: FontWeight.w300,
                            fontFamily: "Bangers"),
                      ),
                      Text(
                        "$countB",
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 70,
                            fontWeight: FontWeight.w300,
                            fontFamily: "Bangers"),
                      ),
                      SizedBox(
                        height: sizee.height * 0.23,
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            countB++;
                          });
                        },
                        child: const Text(
                          "Add 1 Point",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w300,
                              fontFamily: "Bangers"),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: sizee.height * 0.04,
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  countA = 0;
                  countB = 0;
                });
              },
              child: const Text(
                "Reset",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w300,
                    fontFamily: "Bangers"),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
