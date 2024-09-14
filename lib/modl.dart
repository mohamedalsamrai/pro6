import 'package:flutter/material.dart';

// ignore: must_be_immutable, camel_case_types
class theCard extends StatelessWidget {
  String title;
  Icon icon;
  theCard({
    super.key,
    required this.title,
    required this.icon
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child:  ListTile(
        leading: icon,
        title: Text('$title'
          ,
          style: TextStyle(
              fontSize: 17, color: Colors.grey, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
