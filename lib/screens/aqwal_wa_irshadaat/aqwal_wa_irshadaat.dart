
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';


class AqwalWaIrshadaatScreen extends StatefulWidget {
  const AqwalWaIrshadaatScreen({super.key});

  @override
  State<AqwalWaIrshadaatScreen> createState() => _AqwalWaIrshadaatScreenState();
}

class _AqwalWaIrshadaatScreenState extends State<AqwalWaIrshadaatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.26,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/majlis/upergrad.png"),
                        fit: BoxFit.cover,
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
                            const SizedBox(height: 10),
                            Text(
                              "اقوال و ارشاداِت عالیہ",
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
                        const SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                              "assets/images/back-arrow-white.png",
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
          Positioned(
            top: MediaQuery.of(context).size.height * 0.21,
            left: 0,
            right: 0,
            child: Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                height: MediaQuery.of(context).size.height * 0.8,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.43,
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              width: MediaQuery.of(context).size.width * 0.7,
                              height: MediaQuery.of(context).size.height * 0.4,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.grey.withOpacity(0.5)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/aqwal-white.png'),
                                      fit: BoxFit.cover),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 0,
                                      blurRadius: 7,
                                      offset: Offset(0, 7),
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              width: MediaQuery.of(context).size.width * 0.7,
                              height: MediaQuery.of(context).size.height * 0.4,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.grey.withOpacity(0.5)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/aqwal-white.png'),
                                      fit: BoxFit.cover),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 0,
                                      blurRadius: 7,
                                      offset: Offset(0, 7),
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              width: MediaQuery.of(context).size.width * 0.7,
                              height: MediaQuery.of(context).size.height * 0.4,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.grey.withOpacity(0.5)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/aqwal-white.png'),
                                      fit: BoxFit.cover),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 0,
                                      blurRadius: 7,
                                      offset: Offset(0, 7),
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Divider(
                      endIndent: 5,
                      indent: 5,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Image.asset(
                      "assets/images/play.png",
                      height: 60,
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
