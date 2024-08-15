import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TimelineStep extends StatelessWidget {
  final int stepNumber;
  final String imagePath;
  final String description;

  const TimelineStep({
    Key? key,
    required this.stepNumber,
    required this.imagePath,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.grey.shade300,
            child: Text(
              stepNumber.toString(),
              style: TextStyle(color: Colors.black),
            ),
          ),
          if (stepNumber != 6) // idr last step dalna h
            Container(
              height: 50,
              width: 2,
              color: Colors.grey.shade300,
            ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.all(15),
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
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: Image.asset(
                      height: 150,
                      imagePath,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  description,
                  style: GoogleFonts.almarai(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
          if (stepNumber != 6) // idr last step dalna h
            Container(
              height: 50,
              width: 2,
              color: Colors.grey.shade300,
            ),
        ],
      ),
    );
  }
}
