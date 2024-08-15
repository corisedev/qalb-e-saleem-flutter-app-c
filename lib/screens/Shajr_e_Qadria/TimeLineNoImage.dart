import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TimelineStepNoImage extends StatelessWidget {
  final int stepNumber;
  final String description;
  final Color containerColor; // Required container color

  const TimelineStepNoImage({
    Key? key,
    required this.stepNumber,
    required this.description,
    required this.containerColor, // Color is required
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.grey.shade300,
            child: Text(
              stepNumber.toString(),
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        if (stepNumber != 6) // Add last step logic here if needed
          Container(
            height: 50,
            width: 2,
            color: Colors.grey.shade300,
          ),
        SizedBox(height: 10),
        Container(
          // padding: EdgeInsets.all(15),
          margin: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ], color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  width: double.infinity,
                  height: 150,
                  color: containerColor, // Fill with the provided color
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        description,
                        style: GoogleFonts.almarai(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        if (stepNumber != 6) // Add last step logic here if needed
          Container(
            height: 50,
            width: 2,
            color: Colors.grey.shade300,
          ),
      ],
    );
  }
}
