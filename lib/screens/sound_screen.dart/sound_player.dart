import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qalb/screens/sound_screen.dart/text_screen.dart';

class SoundPlayer extends StatefulWidget {
  String image;
  String name;
  String sub;
   SoundPlayer({super.key, required this.image, required this.name, required this.sub});

  @override
  State<SoundPlayer> createState() => _SoundPlayerState();
}

class _SoundPlayerState extends State<SoundPlayer> {


    double position = 0.0;

  @override
  Widget build(BuildContext context) {
      log("-----------------in  sound page name is ${widget.name}");
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
        child: Column(
          children: [
            SizedBox(height: 70),
            Padding(
              padding:  EdgeInsets.only(left:MediaQuery.of(context).size.width*0.32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("قلبِ سلیم", style: GoogleFonts.almarai(fontSize: 20, fontWeight:FontWeight.bold, color: Colors.grey[500])),
                  Image.asset("assets/images/back-arrow-grey.png",width:25),
                ],
              ),
            ),
            SizedBox(height: 50),
            Hero(
              tag: "image",
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0), // Radius of the corners
                child: Image.asset(
                  widget.image, // Replace with your image asset
                  width: double.infinity, // Set the desired width
                  height: 320.0, // Set the desired height
                  fit: BoxFit.fill, // Ensures the image covers the entire area
                ),
              ),
            ),
                        SizedBox(height: 40),


Text(
            widget.name,
            style: GoogleFonts.almarai(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold
            ),
          ),
          Text(
            textDirection: TextDirection.rtl,
            overflow: TextOverflow.ellipsis,
            widget.sub,
            style: GoogleFonts.almarai(
              fontSize: 13,
              color: Colors.black,
            ),

            
          ),

          SizedBox(height: 40),
           Stack(
            clipBehavior: Clip.none,
        alignment: Alignment.centerLeft,
        children: [
          // Horizontal Line
          Container(
            height: 2.0,
            width: double.infinity,
            color: Colors.grey[300],
          ),
          // Ball (timeline.png)
          Positioned(
            left: position, // Adjust the ball's position
            child: GestureDetector(
              onHorizontalDragUpdate: (details) {
                 setState(() {
                  position = (details.localPosition.dx / MediaQuery.of(context).size.width).clamp(0.0, 1.0);
                });
              },
              child: Container(
                width: 35, height:35,
                decoration: BoxDecoration(
                  shape: BoxShape.circle, border: Border.all(color: Colors.white, width:3)
                ),
                
                child: Image.asset(
                  fit: BoxFit.fill,
                  'assets/images/timeline.png',
                  width: 30.0,  // Adjust based on your image size
                  height: 30.0,
                ),
              ),
            ),
          ),
        ],
      ),

                SizedBox(height: 40),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    GestureDetector(
      onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => TextScreen(image: widget.image, name: widget.name,),));

      },
      child: Image.asset("assets/images/read.png", width: 35,)),
    Image.asset("assets/images/play.png", width: 60,),
    Image.asset("assets/images/share-grey.png", width: 35,),
  ],
)
          ],
        ),
      ),
    );
  }
}