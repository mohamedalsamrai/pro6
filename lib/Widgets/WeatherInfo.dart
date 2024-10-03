import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news/components/RowWeather.dart';
import 'package:news/components/Temp.dart';
import 'package:news/models/WeatherModel.dart';
import 'package:news/pages/SerachPage.dart';

class WeatherInfo extends StatelessWidget {
  const WeatherInfo({
    super.key,
    required this.ksize,
    required this.name,
   
  });

  final Size ksize;
  final String name;
 

  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      child: Stack(children: [
        Image.asset(
          "assets/images/IMG_8148.JPG",
          width: ksize.width,
          height: ksize.height,
          fit: BoxFit.cover,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.location_pin,
                            color: Color.fromARGB(213, 239, 245, 252),
                            size: 21,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              name,
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 25,
                                  fontWeight: FontWeight.w200,
                                  color: Color.fromARGB(213, 239, 245, 252)),
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Serachpage()));
                          },
                          icon: Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 27,
                          ))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Row(
                        children: [
                          Temp(
                            temp: "${weatherModel![0].temp}",
                          ),
                          Text(
                            "°",
                            style: TextStyle(
                                fontSize: 85,
                                color:
                                    const Color.fromARGB(175, 255, 255, 255)),
                          ),
                        ],
                      )),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: 240,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadiusDirectional.vertical(top: Radius.circular(40)),
                color: Color(0xfffdfdfd),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Weather Week',
                      style: GoogleFonts.poppins(
                          fontSize: 20, fontWeight: FontWeight.w700)),
                  SizedBox(height: 20),
                  RowWeather(
                  ),
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
