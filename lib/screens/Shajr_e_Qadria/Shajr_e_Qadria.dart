import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:qalb/data/data.dart';
import 'package:qalb/data/text_list.dart';
import 'package:qalb/providers/DataProvider.dart';
import 'package:qalb/screens/Shajr_e_Qadria/TimeLine.dart';

class ShajrEQadriaScreen extends StatefulWidget {
  const ShajrEQadriaScreen({super.key});

  @override
  State<ShajrEQadriaScreen> createState() => _ShajrEQadriaScreenState();
}

class _ShajrEQadriaScreenState extends State<ShajrEQadriaScreen> {
  @override
  void initState() {
    super.initState();
    // Load data in initState
    Provider.of<DataProvider>(context, listen: false).getShajraImageUrl("shajra_hasbiya/");
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topRight,
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: screenHeight * 0.72,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/majlis/upergrad.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // Position the long paragraph container
                Container(
                  margin: EdgeInsets.only(top: screenHeight * 0.105),
                  color: Colors.transparent,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "شجرٔہ قادریہ نسبیہ",
                              style: GoogleFonts.almarai(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.right,
                            ),
                            SizedBox(width: 10),
                            Image.asset("assets/images/back-arrow-white.png", width: 25),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 50),
                        child: Text(
                          '''سلطان الاولیاء، امام العارفین، شہباز طریقت، مخزن علوم باطنی، منبع انوار رحمانی، حضرت پیر سید محمد عبد اللہ شاہ مشہدی قادری رحمة اللہ علیہ کی پیدائش 1315ھ بمطابق 1898ء موضع قادر بخش نزد کمالیہ، ضلع ٹوبہ ٹیک سنگھ میں ہوئی۔ آپ رحمة اللہ علیہ کا سلسلہ نسب حضرت سیدنا امام موسیٰ کاظم رضی اللہ عنہ سے ملتا ہے۔ اس وجہ سے آپ کو کاظمی سید کہتے ہیں۔ آپ رحمة اللہ علیہ کے آباء و اجداد طویل عرصہ تک مشہد مقدس میں رہے، اس کے بعد وارد ہند ہوئے، اس لیئے مشہدی سادات مشہور ہیں۔''',
                          style: GoogleFonts.almarai(
                            color: Colors.white,
                            fontSize: 11,
                          ),
                          softWrap: true,
                          textDirection: TextDirection.rtl,
                          maxLines: null,
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 50),
                        child: Text(
                          'امام الاولیاء حضرت پیر سید محمد عبد اللہ شاہ مشہدی قادری رحمۃ اللہ علیہ کا شجرۂ نسب پینتیس (35) واسطوں سے حضور نبی کریم، رؤف رحیم صلی اللہ علیہ والہ وسلم سے جامعتا ہے۔ اس کی تفصیل حسب ذیل ہے :',
                          textDirection: TextDirection.rtl,
                          style: GoogleFonts.almarai(
                            color: Colors.white,
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ],
                  ),
                ),
                // Timeline steps
                Positioned(
                  top: screenHeight * 0.52,
                  left: 0,
                  right: 0,
                  child: Consumer<DataProvider>(
  builder: (context, itemProvider, child) {
    if (itemProvider.shajraImageUrls.isEmpty) {
      return SizedBox(
        width: double.infinity,
        height: 500,
        child: Center(
          child: CircularProgressIndicator(),
        ),
      );
    } else {
      // List of valid indices

      return Container(
        height: screenHeight * 0.3, // Adjust the height as needed
        child: ListView.builder(
          itemCount: TextData.shajraHasbiya.length,
          itemBuilder: (context, index) {
            bool present = false;
            
            log(present.toString());
            return Container(
              margin: EdgeInsets.symmetric(vertical: 8.0),
              child: TimelineStep(
                stepNumber: index+1,
                imagePath: index+1 == 1 ? itemProvider.shajraImageUrls[0] : index+1 == 2 ?  itemProvider.shajraImageUrls[1] : index+1 == 3 ?  itemProvider.shajraImageUrls[2] : index+1 == 17 ?  itemProvider.shajraImageUrls[3] : index+1 == 37 ?  itemProvider.shajraImageUrls[4] :  index+1 == 43 ?  itemProvider.shajraImageUrls[6] : index == 42 ?  itemProvider.shajraImageUrls[5] : "",
                description: TextData.shajraHasbiya[index],
              ),
            );
          },
        ),
      );
    }
  },
),

                ),
              ],
            ),
          ],
        ),
      ),
    );
  }


}
