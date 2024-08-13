import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
      ClipRRect(
            borderRadius: BorderRadius.circular(20.0), // Radius of the corners
            child: Image.asset(
              imagePath, // Replace with your image asset
              width: 70.0, // Set the desired width
              height: 70.0, // Set the desired height
              fit: BoxFit.fill, // Ensures the image covers the entire area
            ),
          ),
        SizedBox(height: 5),
        Text(
          text,
          style: GoogleFonts.almarai(
            fontSize: 11,
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),
        ),
      ],
    );
  }
}
