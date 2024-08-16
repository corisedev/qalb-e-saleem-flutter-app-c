import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class TextScreen extends StatefulWidget {
  final String image;
  final String name;

  TextScreen({super.key, required this.image, required this.name});

  @override
  State<TextScreen> createState() => _TextScreenState();
}

class _TextScreenState extends State<TextScreen> {
  String fileText = '';

  @override
  void initState() {
    super.initState();
    textFile();
  }

  Future<void> textFile() async {
    String fileContent = await rootBundle.loadString(getTextFile());
    setState(() {
      fileText = fileContent;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
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
                                    getImageAddress(),
                                    width: 80,
                                  ),
                                  SizedBox(width: 10),
                                  Image.asset(
                                    "assets/images/pause-white.png",
                                    width: 35,
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    widget.name,
                                    style: GoogleFonts.almarai(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Image.asset(
                                    "assets/images/back-arrow-white.png",
                                    width: 25,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset("assets/images/clock-white.png", width: 15),
                                    SizedBox(width: 5),
                                    Text("0:00", style: GoogleFonts.almarai(fontSize: 12, color: Colors.white)),
                                  ],
                                ),
                                LottieBuilder.asset("assets/images/voice.json", width: 20),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.21,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 25),
              height: MediaQuery.of(context).size.height * 0.8,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.7,
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.grey.shade300,
                    width: 1.0,
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Image.asset("assets/images/motive.png", width: 100, ),
                      SizedBox(height: 30),
                      Text(widget.name, style: TextStyle(fontFamily:"al-quran",fontSize: 25,color: Color.fromARGB(255, 15, 199, 181)),),
        SizedBox(height:30),
                      Html(data: fileText),
                      SizedBox(height: 30),
                      Image.asset("assets/images/motive.png", width: 100),
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

  String getImageAddress() {
    log("-----------------------name: ${widget.name}--------------------");
    final imageMap = {
      "1منقبت": "assets/images/manqabat-white.png",
      "اظہار تشکر": "assets/images/izhar-white.png",
      "الفراق": "assets/images/alfiraq-white.png",
      "مقّدمۃ الکتاب": "assets/images/muqadma-white.png",
      "پیش لفظ": "assets/images/paish_lafz-white.png",
      "سوانح حیات": "assets/images/sawana-white.png",
      "قلبِ سلیم": "assets/images/qalbesaleem.png",
      "شجرٔہ قادریہ حسبیہ": "assets/images/shajra_hasbia.jpg",
      "شجرٔہ قادریہ نسبیہ": "assets/images/shajra_nasbia.png",
      "قطعہ تاریخ وصال": "assets/images/qata-white.png",
      "منقبت2": "assets/images/manqabat2-white.png",
    };
    return imageMap[widget.name] ?? "";
  }

  String getTextFile() {
    log("-----------------------name: ${widget.name == "1منقبت"}--------------------");
    final textFileMap = {
      "اظہار تشکر": "assets/textFiles/tashakur.html",
      "مقّدمۃ الکتاب": "assets/textFiles/maqadma.html",

      // "الفراق": "assets/images/alfiraq-white.png",
      // "مقّدمۃ الکتاب": "assets/images/muqadma-white.png",
      "پیش لفظ": "assets/textFiles/peshLafz.html",
      // "سوانح حیات": "assets/images/sawana-white.png",
      // "قلبِ سلیم": "assets/images/qalbesaleem.png",
      // "شجرٔہ قادریہ حسبیہ": "assets/images/shajra_hasbia.jpg",
      // "شجرٔہ قادریہ نسبیہ": "assets/images/shajra_nasbia.png",
      // "قطعہ تاریخ وصال": "assets/images/qata-white.png",
      "1منقبت": "assets/textFiles/manqabat1.html",
      // "منقبت2": "assets/images/manqabat2-white.png",
    };
    return textFileMap[widget.name] ?? "";
  }
  
}
