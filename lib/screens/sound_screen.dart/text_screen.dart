import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class TextScreen extends StatefulWidget {
  String image;
  TextScreen({super.key, required this.image});

  @override
  State<TextScreen> createState() => _TextScreenState();
}

class _TextScreenState extends State<TextScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.26,
                      decoration: BoxDecoration(color: Colors.blue),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/images/manqabat-white.png",
                                    width: 80,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Image.asset(
                                    "assets/images/pause-white.png",
                                    width: 35,
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("منقبت",
                                      style: GoogleFonts.almarai(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white)),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Image.asset(
                                      "assets/images/back-arrow-white.png",
                                      width: 25),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                              Row(
                                children: [
                                    Image.asset("assets/images/clock-white.png",
                                    width: 15),
                                    SizedBox(width: 5),
                                    Text("0:00", style: GoogleFonts.almarai(fontSize: 12, color: Colors.white))
                                ],
                              ),

                              LottieBuilder.asset("assets/images/voice.json", width: 20),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height *
                0.21, // Adjust position as needed
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 25),
              height: MediaQuery.of(context).size.height *
                  0.8, // Adjust height as needed
              decoration: BoxDecoration(
                color: Colors.grey[300], // Container background color
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Container(
                height: MediaQuery.of(context).size.height*0.7,
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20), // Rounded corners
                  border: Border.all(
                    color: Colors.grey.shade300, // Light grey border color
                    width: 1.0, // Border width
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Image.asset("assets/images/motive.png", width: 100,),
                      SizedBox(height: 20),
                      Text("منقبت", style: TextStyle(fontFamily: "al-Quran",fontSize: 28, color: Color.fromARGB(255, 15, 199, 181)),),
                                            SizedBox(height: 30),
                  
                      Text("ہے لب پہ میرے نام بس اب ایسے حسیں کا", style: TextStyle(fontFamily: "al-Quran",fontSize: 16, color: Colors.black),),
                      Text("لے کر جو گیا تھا کبھی ِدل اہِل زمیں کا", style: TextStyle(fontFamily: "al-Quran",fontSize: 16, color: Colors.black),),
                      SizedBox(height: 20,),
                  
                      Text("آیا تھا ہمیں ایک جھلک اپنی دکھانے", style: TextStyle(fontFamily: "al-Quran",fontSize: 16, color: Colors.black),),
                      Text("مہماں تو تھا یارو مگر عرِش بریں کا", style: TextStyle(fontFamily: "al-Quran",fontSize: 16, color: Colors.black),),
                      SizedBox(height: 20,),
                  
                      Text("ارشاِد خداوند ہمیں آکے سنائے", style: TextStyle(fontFamily: "al-Quran",fontSize: 16, color: Colors.black),),
                      Text("متالشی تھا ہر وقت وہ شاگرِد ذہیں کا", style: TextStyle(fontFamily: "al-Quran",fontSize: 16, color: Colors.black),),
                      SizedBox(height: 20,),
                  
                      Text("کردے جو فراموش اسے کون سا ِد ل ہے", style: TextStyle(fontFamily: "al-Quran",fontSize: 16, color: Colors.black),),
                      Text("اس کا تھا وہ ہوجاتا، نہ ہوتا جو کہیں کا", style: TextStyle(fontFamily: "al-Quran",fontSize: 16, color: Colors.black),),
                      SizedBox(height: 20,),
                  
                      Text("نائِب وہ نبی کا تھا، اوالِد علی تھا", style: TextStyle(fontFamily: "al-Quran",fontSize: 16, color: Colors.black),),
                      Text("ہر ذّرہ غزل خواں ہے اس ماِہ جبیں کا", style: TextStyle(fontFamily: "al-Quran",fontSize: 16, color: Colors.black),),
                      SizedBox(height: 20,),
                  
                      Text("وہ کون تھا اور کیا تھا، بس اتنا ہی سنا ہے", style: TextStyle(fontFamily: "al-Quran",fontSize: 16, color: Colors.black),),
                      Text("کہتے ہیں وہ محبوب تھا اس ظفِر حزیں کا", style: TextStyle(fontFamily: "al-Quran",fontSize: 16, color: Colors.black),),
                      SizedBox(height: 30,),
                        Text(
                          textAlign: TextAlign.center,
                          "حضرت سّید محمد ظفر مشہدی قادری رحمة اهلل عليه", style: TextStyle(fontFamily: "al-Quran",fontSize: 15, color: Color.fromARGB(255, 15, 199, 181)),),
                                            SizedBox(height: 30),
                                                                 Image.asset("assets/images/motive.png", width: 100,),
                                                                                                             SizedBox(height: 100),

 
                    ],
                  ),
                ),
              ),

            ),
          ),
        ],
      ),
    );
  }
}
