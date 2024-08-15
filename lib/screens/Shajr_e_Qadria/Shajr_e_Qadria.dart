import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qalb/screens/Shajr_e_Qadria/TimeLine.dart';
import 'package:qalb/screens/Shajr_e_Qadria/TimeLineNoImage.dart';

class ShajrEQadriaScreen extends StatefulWidget {
  const ShajrEQadriaScreen({super.key});

  @override
  State<ShajrEQadriaScreen> createState() => _ShajrEQadriaScreenState();
}

class _ShajrEQadriaScreenState extends State<ShajrEQadriaScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  // The background image container
                  Container(
                    height: screenHeight * 0.8,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/majlis/upergrad.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  SizedBox(height: 90),
                                  Container(
                                    margin: EdgeInsets.only(right: 20),
                                    child: Text(
                                      "شجرٔہ قادریہ نسبیہ",
                                      style: GoogleFonts.almarai(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: 40, right: 20, top: 20),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          '''سلطان الاولیاء، امام العارفین، شہباز طریقت، مخزن علوم باطنی، منبع انوار رحمانی، حضرت پیر سید محمد عبد اللہ شاہ مشہدی قادری رحمة اللہ علیہ کی پیدائش 1315ھ بمطابق 1898ء موضع قادر بخش نزد کمالیہ، ضلع ٹوبہ ٹیک سنگھ میں ہوئی۔ آپ رحمة اللہ علیہ کا سلسلہ نسب حضرت سیدنا امام موسیٰ کاظم رضی اللہ عنہ سے ملتا ہے۔ اس وجہ سے آپ کو کاظمی سید کہتے ہیں۔ آپ رحمة اللہ علیہ کے آباء و اجداد طویل عرصہ تک مشہد مقدس میں رہے، اس کے بعد وارد ہند ہوئے، اس لیئے مشہدی سادات مشہور ہیں۔''',
                                          style: GoogleFonts.almarai(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          softWrap: true,
                                          maxLines: null,
                                          textAlign: TextAlign.right,
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          'امام الاولیاء حضرت پیر سید محمد عبد اللہ شاہ مشہدی قادری رحمۃ اللہ علیہ کا شجرۂ نسب پینتیس (35) واسطوں سے حضور نبی کریم، رؤف رحیم صلی اللہ علیہ والہ وسلم سے جامعتا ہے۔ اس کی تفصیل حسب ذیل ہے :',
                                          textDirection: TextDirection.rtl,
                                          style: GoogleFonts.almarai(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          softWrap: true,
                                          maxLines: null,
                                          textAlign: TextAlign.right,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 90,
                                  width: 40,
                                ),
                                Image.asset(
                                  "assets/images/back-arrow-white.png",
                                  width: 26,
                                ),
                              ],
                            ),
                            SizedBox(width: 20),
                          ],
                        ),
                      ],
                    ),
                  ),

                  // First timeline step positioned with half overlap on image and white background
                  Positioned(
                    top: screenHeight *
                        0.6, // Position slightly above the bottom
                    left: screenWidth *
                        0.25, // Adjust based on your alignment preference
                    right: screenWidth *
                        0.25, // Adjust based on your alignment preference
                    child: TimelineStep(
                      stepNumber: 1,
                      imagePath:
                          'assets/images/darbar-shareef.png', // Replace with your image
                      description:
                          'خاتم النبین حضرت سیدنا محمد رسول اللہ صلی اللہ تعالیٰ علیہ والہ وسلم',
                    ),
                  ),
                ],
              ),

              // Additional timeline steps
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    TimelineStep(
                      stepNumber: 2,
                      imagePath: 'assets/images/darbar-shareef.png',
                      description:
                          'خاتم النبین حضرت سیدنا محمد رسول اللہ صلی اللہ تعالیٰ علیہ والہ وسلم',
                    ),
                    TimelineStep(
                      stepNumber: 3,
                      imagePath: 'assets/images/darbar-shareef.png',
                      description:
                          'خاتم النبین حضرت سیدنا محمد رسول اللہ صلی اللہ تعالیٰ علیہ والہ وسلم',
                    ),
                    TimelineStep(
                      stepNumber: 4,
                      imagePath: 'assets/images/darbar-shareef.png',
                      description:
                          'خاتم النبین حضرت سیدنا محمد رسول اللہ صلی اللہ تعالیٰ علیہ والہ وسلم',
                    ),
                    TimelineStepNoImage(
                      stepNumber: 5,
                      description:
                          'خاتم النبین حضرت سیدنا محمد رسول اللہ صلی اللہ تعالیٰ علیہ والہ وسلم',
                      containerColor: Colors.green,
                    ),
                    TimelineStepNoImage(
                      stepNumber: 6,
                      description:
                          'خاتم النبین حضرت سیدنا محمد رسول اللہ صلی اللہ تعالیٰ علیہ والہ وسلم',
                      containerColor: Colors.green,
                    ),
                    TimelineStepNoImage(
                      stepNumber: 7,
                      description:
                          'خاتم النبین حضرت سیدنا محمد رسول اللہ صلی اللہ تعالیٰ علیہ والہ وسلم',
                      containerColor: Colors.green,
                    ),
                    TimelineStepNoImage(
                      stepNumber: 8,
                      description:
                          'خاتم النبین حضرت سیدنا محمد رسول اللہ صلی اللہ تعالیٰ علیہ والہ وسلم',
                      containerColor: Colors.green,
                    ),
                    TimelineStepNoImage(
                      stepNumber: 9,
                      description:
                          'خاتم النبین حضرت سیدنا محمد رسول اللہ صلی اللہ تعالیٰ علیہ والہ وسلم',
                      containerColor: Colors.green,
                    ),
                    TimelineStepNoImage(
                      stepNumber: 10,
                      description:
                          'خاتم النبین حضرت سیدنا محمد رسول اللہ صلی اللہ تعالیٰ علیہ والہ وسلم',
                      containerColor: Colors.green,
                    ),
                    TimelineStepNoImage(
                      stepNumber: 10,
                      description:
                          'خاتم النبین حضرت سیدنا محمد رسول اللہ صلی اللہ تعالیٰ علیہ والہ وسلم',
                      containerColor: Colors.green,
                    ),
                    TimelineStepNoImage(
                      stepNumber: 11,
                      description:
                          'خاتم النبین حضرت سیدنا محمد رسول اللہ صلی اللہ تعالیٰ علیہ والہ وسلم',
                      containerColor: Colors.green,
                    ),
                    TimelineStepNoImage(
                      stepNumber: 12,
                      description:
                          'خاتم النبین حضرت سیدنا محمد رسول اللہ صلی اللہ تعالیٰ علیہ والہ وسلم',
                      containerColor: Colors.green,
                    ),
                    TimelineStepNoImage(
                      stepNumber: 13,
                      description:
                          'خاتم النبین حضرت سیدنا محمد رسول اللہ صلی اللہ تعالیٰ علیہ والہ وسلم',
                      containerColor: Colors.green,
                    ),
                    TimelineStepNoImage(
                      stepNumber: 14,
                      description:
                          'خاتم النبین حضرت سیدنا محمد رسول اللہ صلی اللہ تعالیٰ علیہ والہ وسلم',
                      containerColor: Colors.green,
                    ),
                    TimelineStepNoImage(
                      stepNumber: 15,
                      description:
                          'خاتم النبین حضرت سیدنا محمد رسول اللہ صلی اللہ تعالیٰ علیہ والہ وسلم',
                      containerColor: Colors.green,
                    ),
                    TimelineStepNoImage(
                      stepNumber: 16,
                      description:
                          'خاتم النبین حضرت سیدنا محمد رسول اللہ صلی اللہ تعالیٰ علیہ والہ وسلم',
                      containerColor: Colors.green,
                    ),
                    TimelineStepNoImage(
                      stepNumber: 17,
                      description:
                          'خاتم النبین حضرت سیدنا محمد رسول اللہ صلی اللہ تعالیٰ علیہ والہ وسلم',
                      containerColor: Colors.green,
                    ),
                    TimelineStepNoImage(
                      stepNumber: 18,
                      description:
                          'خاتم النبین حضرت سیدنا محمد رسول اللہ صلی اللہ تعالیٰ علیہ والہ وسلم',
                      containerColor: Colors.green,
                    ),
                    TimelineStepNoImage(
                      stepNumber: 19,
                      description:
                          'خاتم النبین حضرت سیدنا محمد رسول اللہ صلی اللہ تعالیٰ علیہ والہ وسلم',
                      containerColor: Colors.green,
                    ),
                    TimelineStepNoImage(
                      stepNumber: 20,
                      description:
                          'خاتم النبین حضرت سیدنا محمد رسول اللہ صلی اللہ تعالیٰ علیہ والہ وسلم',
                      containerColor: Colors.green,
                    ),
                    TimelineStepNoImage(
                      stepNumber: 21,
                      description:
                          'خاتم النبین حضرت سیدنا محمد رسول اللہ صلی اللہ تعالیٰ علیہ والہ وسلم',
                      containerColor: Colors.green,
                    ),
                    TimelineStepNoImage(
                      stepNumber: 22,
                      description:
                          'خاتم النبین حضرت سیدنا محمد رسول اللہ صلی اللہ تعالیٰ علیہ والہ وسلم',
                      containerColor: Colors.green,
                    ),
                    TimelineStepNoImage(
                      stepNumber: 23,
                      description:
                          'خاتم النبین حضرت سیدنا محمد رسول اللہ صلی اللہ تعالیٰ علیہ والہ وسلم',
                      containerColor: Colors.green,
                    ),
                    TimelineStepNoImage(
                      stepNumber: 24,
                      description:
                          'خاتم النبین حضرت سیدنا محمد رسول اللہ صلی اللہ تعالیٰ علیہ والہ وسلم',
                      containerColor: Colors.green,
                    ),
                    TimelineStepNoImage(
                      stepNumber: 25,
                      description:
                          'خاتم النبین حضرت سیدنا محمد رسول اللہ صلی اللہ تعالیٰ علیہ والہ وسلم',
                      containerColor: Colors.green,
                    ),
                    TimelineStepNoImage(
                      stepNumber: 26,
                      description:
                          'خاتم النبین حضرت سیدنا محمد رسول اللہ صلی اللہ تعالیٰ علیہ والہ وسلم',
                      containerColor: Colors.green,
                    ),
                    TimelineStep(
                      stepNumber: 27,
                      imagePath: 'assets/images/darbar-shareef.png',
                      description:
                          'خاتم النبین حضرت سیدنا محمد رسول اللہ صلی اللہ تعالیٰ علیہ والہ وسلم',
                    ),
                    SizedBox(height: 40),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
