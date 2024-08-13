import 'package:flutter/material.dart';

class SmallContainer extends StatelessWidget {
  final Color backgroundColor;
  final String imagePath;
  final String text;

  SmallContainer({
    required this.backgroundColor,
    required this.imagePath,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(height: 5),
        Text(
          text,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
