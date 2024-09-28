import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news/pages/HomePage.dart';

class Serachpage extends StatefulWidget {
  const Serachpage({super.key});

  @override
  State<Serachpage> createState() => _SerachpageState();
}

class _SerachpageState extends State<Serachpage> {
  
  @override
  Widget build(BuildContext context) {
    Size ksize = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        shadowColor: Colors.black,
        elevation: 2,
        title: Text("Search for your city",
            style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Color(0xffffffff))),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            Text("Welcome back 🌟",
                style: GoogleFonts.poppins(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromARGB(201, 0, 0, 0))),
            SizedBox(
              height: 150,
            ),
            TextField(
              
              onSubmitted: (value) => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HomePage(ksize: ksize, name: value,))),
              cursorColor: Colors.blue,
              decoration: InputDecoration(
                  hintText: "Enter city name",
                  hintStyle: TextStyle(fontSize: 15, color: Colors.grey[600]),
                  labelText: "Search",
                  labelStyle: TextStyle(color: Colors.black),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 21, horizontal: 14),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(14)),
                  disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: BorderSide(color: Colors.blue, width: 1.3)),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(14))),
            )
          ],
        ),
      ),
    );
  }
}
