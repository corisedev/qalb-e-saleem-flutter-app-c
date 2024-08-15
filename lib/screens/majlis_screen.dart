import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:qalb/data/data.dart';
import 'package:qalb/providers/DataProvider.dart';

class Majlis extends StatefulWidget {
  const Majlis({super.key});

  @override
  State<Majlis> createState() => _MajlisState();
}

class _MajlisState extends State<Majlis> {
  @override
  void initState() {
    Provider.of<DataProvider>(context, listen: false).getMajlisImagesUrl();
    super.initState();
  }

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
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/majlis/upergrad.png"),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 0.0, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SizedBox(height: 10),
                              Text(
                                "فهرست مجالس",
                                style: GoogleFonts.almarai(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "امام االولیاء حضرت پیر سّید محّمد عبد اهلل شاہ مشہدی قادری",
                                style: GoogleFonts.almarai(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 10),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SvgPicture.asset(
                                "assets/images/back-arrow-white.svg",
                                width: 22,
                              ),
                            ],
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
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Consumer<DataProvider>(
                builder: (context, myDataProvider, child) {
                  return ListView.builder(
                    itemCount: myDataProvider.majlishImages.length,
                    itemBuilder: (context, index) {
                      return majlisContainer(myDataProvider.majlishImages[index], index);
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget majlisContainer(String image, int index) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/box-with-shadow.png"),
          fit: BoxFit.cover,
        ),
      ),
      height: 237,
      padding: EdgeInsets.symmetric(vertical: 25, horizontal: 10),
      margin: EdgeInsets.only(top: 0),
      child: Column(
        children: [
          Container(
            height: 115,
            width: MediaQuery.of(context).size.width * 0.87,
            child: Image.network(
              image,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(height: 0),
          Container(
            height: 70,
            width: MediaQuery.of(context).size.width * 0.87,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset(
                          "assets/images/clock.svg",
                          width: 15,
                        ),
                        SizedBox(width: 4),
                        Text(
                          "10:23",
                          style: GoogleFonts.almarai(fontSize: 12),
                        ),
                        SizedBox(width: MediaQuery.of(context).size.width * 0.1),
                        SizedBox(
                          width: 140,
                          child: Text(
                            textDirection: TextDirection.rtl,
                            overflow: TextOverflow.ellipsis,
                            TextData.majlisUrdu[index],
                            style: GoogleFonts.almarai(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    Text(
                      TextData.majlisEnglish[index],
                      style: GoogleFonts.almarai(fontSize: 10),
                    ),
                  ],
                ),
                VerticalDivider(
                  color: Colors.black,
                  thickness: 0.5,
                  width: 10,
                  indent: 10,
                  endIndent: 10,
                ),
                SizedBox(width: 0),
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                  width: 20,
                  height: 20,
                  child: Text(
                    "${index+1}",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(width: 5),
                Text(
                  "مجلس",
                  style: GoogleFonts.almarai(
                    fontSize: 13,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
