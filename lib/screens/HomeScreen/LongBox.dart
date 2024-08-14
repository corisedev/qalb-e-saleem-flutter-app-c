import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LongBox extends StatelessWidget {
  final String imagePath;
  final String mainText;
  final String subText1;
  final String subText2;
  final String subText3;
  final Color backgroundColor;

  LongBox({
    required this.imagePath,
    required this.mainText,
    required this.subText1,
    required this.subText2,
    required this.subText3,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      height: 140,
      width: double.infinity,
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadiusDirectional.circular(15)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                mainText,
                style: GoogleFonts.almarai(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),
              ),
              SizedBox(height: 15),
              Text(
                subText1,
                textDirection: TextDirection.rtl,
                style: GoogleFonts.almarai(fontSize: 10, color: Colors.white),
              ),
              Text(
                subText2,
                textDirection: TextDirection.rtl,
                style: GoogleFonts.almarai(fontSize: 10, color: Colors.white),
              ),
              Text(
                subText3,
                textDirection: TextDirection.rtl,
                style: GoogleFonts.almarai(fontSize: 10, color: Colors.white),
              ),
              SizedBox(height: 10),
            ],
          ),
          SizedBox(width: 5),
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset(
              imagePath,
              width: 110.0,
              height: 110.0,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
