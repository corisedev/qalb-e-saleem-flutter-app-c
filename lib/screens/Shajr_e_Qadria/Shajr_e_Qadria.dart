import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:qalb/data/data.dart';
import 'package:qalb/data/text_list.dart';
import 'package:qalb/providers/DataProvider.dart';
import 'package:qalb/screens/Shajr_e_Qadria/TimeLine.dart';

class ShajrEQadriaScreen extends StatefulWidget {
  String text;
   ShajrEQadriaScreen({super.key, required this.text});

  @override
  State<ShajrEQadriaScreen> createState() => _ShajrEQadriaScreenState();
}

class _ShajrEQadriaScreenState extends State<ShajrEQadriaScreen> {
  @override
  void initState() {
    super.initState();
    // // Load data in initState
    // if(widget.text == "nasbiya"){
    //   Provider.of<DataProvider>(context, listen: false)
    //     .getShajraImageUrl("shajra_nasbiya/");
    // }else{
    //   Provider.of<DataProvider>(context, listen: false)
    //     .getShajraImageUrl("shajra_hasbiya/");
    // }
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topRight,
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: widget.text == "nasbiya"? screenHeight * 0.72 : screenHeight * 0.52,
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
                              widget.text == "nasbiya" ? "شجرٔہ قادریہ نسبیہ" : "شجرٔہ قادریہ حسبیہ",
                              style: GoogleFonts.almarai(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.right,
                            ),
                            SizedBox(width: 10),
                            Image.asset("assets/images/back-arrow-white.png",
                                width: 25),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 50),
                        child: Text(

                          widget.text == "nasbiya" ?
                          '''سلطان الاولیاء، امام العارفین، شہباز طریقت، مخزن علوم باطنی، منبع انوار رحمانی، حضرت پیر سید محمد عبد اللہ شاہ مشہدی قادری رحمة اللہ علیہ کی پیدائش 1315ھ بمطابق 1898ء موضع قادر بخش نزد کمالیہ، ضلع ٹوبہ ٹیک سنگھ میں ہوئی۔ آپ رحمة اللہ علیہ کا سلسلہ نسب حضرت سیدنا امام موسیٰ کاظم رضی اللہ عنہ سے ملتا ہے۔ اس وجہ سے آپ کو کاظمی سید کہتے ہیں۔ آپ رحمة اللہ علیہ کے آباء و اجداد طویل عرصہ تک مشہد مقدس میں رہے، اس کے بعد وارد ہند ہوئے، اس لیئے مشہدی سادات مشہور ہیں۔''' : '''آپ رحمة اهلل عليه کا شجرٔہ حسب اکتالیس )41( واسطوں سے پیارے آقا ومولٰی، محبوب خدا، حضرت سّیدنا احمد مجتبٰی
: محمد مصطفٰی صلی الله عليه وآله وسلم سے جا ملتا ہے۔ اس کی پوری تفصیل مالحظہ فرمائیے''',
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
                          widget.text == "nasbiya"?
                          'امام الاولیاء حضرت پیر سید محمد عبد اللہ شاہ مشہدی قادری رحمۃ اللہ علیہ کا شجرۂ نسب پینتیس (35) واسطوں سے حضور نبی کریم، رؤف رحیم صلی اللہ علیہ والہ وسلم سے جامعتا ہے۔ اس کی تفصیل حسب ذیل ہے :' : "",
                          textDirection: TextDirection.rtl,
                          style: GoogleFonts.almarai(
                            color: Colors.white,
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.right,
                        ),
                      ),
                      Consumer<DataProvider>(
                        builder: (context, itemProvider, child) {
                        
                            return ListView.builder(
                              shrinkWrap: true,
                              itemCount: widget.text == "nasbiya" ? TextData.shajraNasbia.length :TextData.shajraHasbiya.length,
                              physics: NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                bool present = false;
                                log(present.toString());
                                return Container(
                                  margin: EdgeInsets.symmetric(vertical: 0.0),
                                  child: TimelineStep(
                                    name: widget.text,
                                    stepNumber: index + 1,
                                    imagePath: getImageUrl(index, itemProvider),
                                    description: widget.text == "nasbiya" ?TextData.shajraNasbia[index] :TextData.shajraHasbiya[index],
                                  ),
                                );
                              },
                            );
                          }
                        
                      ),
                      SizedBox(height: 200),
                    ],
                  ),
                ),
              ],
            ),
            // Timeline steps
          ],
        ),
      ),
    );
  }



 String? getImageUrl(int index, DataProvider itemProvider) {
  switch (widget.text) {
    case "nasbiya":
      switch (index + 1) {
        case 1:
          return itemProvider.shajraNasbiyaImageUrls[0];
        case 2:
          return itemProvider.shajraNasbiyaImageUrls[1];
        case 3:
          return itemProvider.shajraNasbiyaImageUrls[2];
        case 37:
          return itemProvider.shajraNasbiyaImageUrls[3];
        default:
          return "";
      }
    case "hasbiya":
      switch (index + 1) {
        case 1:
          return itemProvider.shajraHasbiyaImageUrls[0];
        case 2:
          return itemProvider.shajraHasbiyaImageUrls[1];
        case 3:
          return itemProvider.shajraHasbiyaImageUrls[2];
        case 17:
          return itemProvider.shajraHasbiyaImageUrls[3];
        case 37:
          return itemProvider.shajraHasbiyaImageUrls[4];
        case 42:
          return itemProvider.shajraHasbiyaImageUrls[5];
        case 43:
          return itemProvider.shajraHasbiyaImageUrls[6];
        default:
          return "";
      }
    default:
      return "";
  }
}

// Usage


}
