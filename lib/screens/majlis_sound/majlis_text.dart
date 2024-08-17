
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class Majlis_Text extends StatefulWidget {
  final String image;
  final String name;
  final String file;

  Majlis_Text({super.key, required this.image, required this.name,required this.file});

  @override
  State<Majlis_Text> createState() => _Majlis_TextState();
}

class _Majlis_TextState extends State<Majlis_Text> {
late Future<String> _htmlContent;
  @override
  void initState() {
    super.initState();
     _htmlContent = fetchHtmlContent(widget.file);
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
                                  Image.network(
                                    widget.image, width:80
                                  ) ,
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
                                  SizedBox(
                                    width: 130,
                                    child: Text(textDirection: TextDirection.rtl,
                                      overflow: TextOverflow.clip,
                                      widget.name,
                                      style: GoogleFonts.almarai(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
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
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 7),
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
        SizedBox(height:widget.name == "شجرٔہ قادریہ نسبیہ" || widget.name == "شجرٔہ قادریہ حسبیہ" ? 0 : 30),
                      FutureBuilder<String>(
        future: _htmlContent,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: Container());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            return Html(data: snapshot.data);
          }
        },
      ),
    
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

  Future<String> fetchHtmlContent(String url) async {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      // Check and handle encoding if necessary
      final contentType = response.headers['content-type'];
      if (contentType != null && contentType.contains('charset=')) {
        final charset = contentType.split('charset=')[1];
        return _convertToUtf8(response.bodyBytes, charset);
      } else {
        return utf8.decode(response.bodyBytes);
      }
    } else {
      throw Exception('Failed to load HTML content');
    }
  }
  String _convertToUtf8(List<int> bytes, String charset) {
    try {
      final encoding = Encoding.getByName(charset) ?? utf8;
      return encoding.decode(bytes);
    } catch (e) {
      return utf8.decode(bytes); // Fallback to UTF-8
    }
  }
  }


  

  

