import 'package:flutter/material.dart';

class InfoWidget extends StatelessWidget {
  // ACM

  final String title;
  final IconData icon;


  const InfoWidget({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: 1
        ),
        borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        children: [
          Icon(icon , color: Colors.white,),
          SizedBox(width: 10,),
          Text(title, style: TextStyle(color: Colors.white),)
        ],
      ),
    );
  }
}