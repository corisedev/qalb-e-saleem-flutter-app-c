import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Majlis extends StatefulWidget {
  const Majlis({super.key});

  @override
  State<Majlis> createState() => _MajlisState();
}

class _MajlisState extends State<Majlis> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:Stack(
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
                                      image: DecorationImage(image: AssetImage("assets/images/majlis/upergrad.png", ) ,fit: BoxFit.contain)
                                    ),
                                  ),
                                   Padding(
                                     padding: const EdgeInsets.only(bottom:0.0, right: 10),
                                     child: Row(mainAxisAlignment: MainAxisAlignment.end,
                                       children: [
                                         Column(crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            SizedBox(height:10),
                                                                 
                                                                   Text("فهرست مجالس", style: GoogleFonts.almarai(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold),),
                                                                        Text("امام االولیاء حضرت پیر سّید محّمد عبد اهلل شاہ مشہدی قادری", style: GoogleFonts.almarai(color: Colors.white, fontSize: 10,),),
                                         
                                                                 ],),
                                     SizedBox(width: 10,),
                                                                 Column(
                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                  children: [
                                                                   SvgPicture.asset("assets/images/back-arrow-white.svg",width: 22,)
                                                                 ])
                                       ],
                                     ),
                                   ),
                    ],
                  ),
                ],
              ),
            ),
                         

            Positioned(
              top: MediaQuery.of(context).size.height * 0.21, // Adjust position as needed
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.symmetric( vertical:25),
                height: MediaQuery.of(context).size.height * 0.8, // Adjust height as needed
                decoration: BoxDecoration(
                  color: Colors.white, // Container background color
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal:0.0),
                    child: Column(
                      children: [
                      majlisContainer(),
                      majlisContainer(),
                      majlisContainer(),
                      majlisContainer(),
                      majlisContainer(),
                    ],),
                  ),
                ),
                ),),
        ],
        )
      ),
    );
  }


Widget majlisContainer(){
  return Container(
    width: MediaQuery.of(context).size.width*0.9,
    decoration: BoxDecoration( image: DecorationImage(image: AssetImage("assets/images/box-with-shadow.png",),fit: BoxFit.cover),
  
    ),
   
    height: 237,
    padding:EdgeInsets.symmetric( vertical: 25,horizontal:10),
    margin:EdgeInsets.only(top: 0, ),
    child: Column(children: [
      Container(
        
        height:115, 
        width: MediaQuery.of(context).size.width*0.87,
        child: Image.asset("assets/images/majlis/majlis1.png",fit: BoxFit.fill,)
      ),
      SizedBox(height: 0,),
      Container(
        
        height:70, 
        width: MediaQuery.of(context).size.width*0.87,
        child: 
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                SvgPicture.asset("assets/images/clock.svg", width: 15,),
                SizedBox(width:4),
                Text("10:23", style: GoogleFonts.almarai( fontSize: 12),),
                SizedBox(width:   MediaQuery.of(context).size.width*0.1,),
                SizedBox(width:140,child: Text(
                  textDirection: TextDirection.rtl,
                  overflow: TextOverflow.ellipsis,"مرشِد کامل، نائِب رسول" , style: GoogleFonts.almarai(fontWeight: FontWeight.bold, fontSize: 13),))
                               ],
                              ),
                              SizedBox(height: 12,),
              Text("The guid, deputy of the Prophet (PBUH)", style: GoogleFonts.almarai( fontSize: 10))
              ],
            ),
   VerticalDivider(
              color: Colors.black, // Color of the divider
              thickness: 0.5,        // Thickness of the divider line
              width: 10,           // Width of the space around the line
              indent: 10,          // Space before the line starts
              endIndent: 10,       // Space after the line ends
            ),  
SizedBox(width: 0,),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(color: Colors.black, shape: BoxShape.circle),width: 20, height:20,child: 
              Text("1", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
              SizedBox(width:5),
              Text("مجلس", style: GoogleFonts.almarai( fontSize: 13,color: Colors.black, fontWeight: FontWeight.w500),),

          ],
        ),),
      
    ],),
  );
}
}