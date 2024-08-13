import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qalb/screens/HomeScreen/GradiantContainer.dart';
import 'package:qalb/screens/HomeScreen/smallContainer.dart';
import 'package:qalb/screens/majlis_screen.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  Widget smallContainer() {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 2, 8, 136),
              borderRadius: BorderRadius.circular(15),
              // image: DecorationImage(
              //   image: AssetImage('assets/images/logo.jpg'),
              //   fit: BoxFit
              //       .cover,
              // ),
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text('HELLO')
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 60),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Majlis()));
                },
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.29,
                          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(image: AssetImage("assets/images/darbar-shareef.png"), fit: BoxFit.fill)
                  ),
                  child: Column(children: [
                    SizedBox(height:20),
                              Text("فهرست مجالس", style: GoogleFonts.almarai(fontSize: 21, color: Colors.blue[200],fontWeight: FontWeight.bold, ),),
                              Text("امام االولیاء حضرت پیر سّید محّمد عبد اهلل شاہ مشہدی قادری", style: GoogleFonts.almarai(fontSize: 10, color: Colors.white,fontWeight: FontWeight.bold ),),
                              Text("رحمة اهلل تعالى عليه", style: GoogleFonts.almarai(fontSize: 11, color: Colors.white, ),),
                            ],),
                ),
              ),
              
              
                          
              
                          
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:20.0, ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmallContainer(
                      backgroundColor: Colors.transparent,
                      imagePath: 'assets/images/manqabat.png',
                      text: 'منقبت',
                    ),
                    SmallContainer(
                      backgroundColor: const Color.fromARGB(255, 20, 5, 128),
                      imagePath: 'assets/images/tashakur.png',
                      text: 'اظہار تشکر',
                    ),
                    SmallContainer(
                      backgroundColor: Colors.purple,
                      imagePath: 'assets/images/muqadma.png',
                      text: 'مقّدمۃ الکتاب',
                    ),
                    SmallContainer(
                      backgroundColor: Colors.green,
                      imagePath: 'assets/images/peshLafz.png',
                      text: 'پیش لفظ',
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
           Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
             child: Column(
               children: [
                 secondBox(),
                 SizedBox(height:10),
                 secondBox(),
                            SizedBox(height:10),
                 
                 secondBox(),
               ],
             ),
           ),

           Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 60),
            width:double.infinity,
            height: 520, decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/majlis/upergrad.png", ),fit: BoxFit.fill)),
           child: Column(children: [
Text("شجرٔہ قادریہ", style: GoogleFonts.almarai(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
Padding(
  padding: EdgeInsets.symmetric(horizontal: 20),
  child: Text(textAlign: TextAlign.center,"امام االولیاء حضرت پیر سّید محمد عبد الله شاہ مشہدی قادری رحمة اهلل عليه", style: GoogleFonts.almarai(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white),)),
SizedBox(height: 20),
  Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
         ClipRRect(
            borderRadius: BorderRadius.circular(20.0), // Radius of the corners
            child: Image.asset(
              "assets/images/majlis/majlis1.png", // Replace with your image asset
              width: MediaQuery.of(context).size.width*0.46, // Set the desired width
              height: 110.0, // Set the desired height
              fit: BoxFit.cover, // Ensures the image covers the entire area
            ),
          ),
         ClipRRect(
            borderRadius: BorderRadius.circular(20.0), // Radius of the corners
            child: Image.asset(
              "assets/images/majlis/majlis1.png", // Replace with your image asset
              width: MediaQuery.of(context).size.width*0.46, // Set the desired width
              height: 110.0, // Set the desired height
              fit: BoxFit.cover, // Ensures the image covers the entire area
            ),
          ),

       
    ],
  ),
  SizedBox(height: 10),
     Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 90, 
                              width: MediaQuery.of(context).size.width*0.46, // Set the desired width

                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(20),
                  color: const Color.fromARGB(255, 34, 115, 255)
                ),
                child: Text("شجرٔہ قادریہ", style: GoogleFonts.almarai(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),

              ),
              Container(
                height: 90, 
                              width: MediaQuery.of(context).size.width*0.46, // Set the desired width

                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(20),
                  color: const Color.fromARGB(255, 34, 115, 255)
                ),
                child: Text("شجرٔہ قادریہ", style: GoogleFonts.almarai(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),

              )
            ],
          ),
          SizedBox(height: 10),
     Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 90, 
                              width: MediaQuery.of(context).size.width*0.46, // Set the desired width

                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(20),
                 color: Colors.transparent,
                 border: Border.all( color: Colors.white,),
                ),
                child: Text("شجرٔہ قادریہ", style: GoogleFonts.almarai(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),

              ),
              Container(
                height: 90, 
                              width: MediaQuery.of(context).size.width*0.46, // Set the desired width

                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(20),
  color: Colors.transparent,
                 border: Border.all( color: Colors.white,),                ),
                child: Text("شجرٔہ قادریہ", style: GoogleFonts.almarai(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),

              )
            ],
          )
           ],),
           ),
           SizedBox(height: 30),

           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 10.0),


             child: secondBox(),
           ),
SizedBox(height: 20),
           Padding(padding: EdgeInsetsDirectional.symmetric(horizontal: 10),
           
           child:   Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 60, 
                              width: MediaQuery.of(context).size.width*0.46, // Set the desired width

                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(20),
                  color: const Color.fromARGB(255, 34, 115, 255)
                ),
                child: Text("شجرٔہ قادریہ", style: GoogleFonts.almarai(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.white),),

              ),
              Container(
                height: 60, 
                              width: MediaQuery.of(context).size.width*0.46, // Set the desired width

                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(20),
                  color: const Color.fromARGB(255, 34, 115, 255)
                ),
                child: Text("شجرٔہ قادریہ", style: GoogleFonts.almarai(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.white),),

              )
            ],
          ),),
SizedBox(height: 10),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
                height: 60, 
                              width: double.infinity, // Set the desired width

                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(20),
                  color: const Color.fromARGB(255, 34, 115, 255)
                ),
                child: Text("شجرٔہ قادریہ", style: GoogleFonts.almarai(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.white),),

              ),
              SizedBox(height: 10),
                 Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
            width:double.infinity,
            height: 520, decoration: BoxDecoration(color: Color.fromARGB(205, 36, 49, 237)),
           child: Column(children: [

            Container(
            height: 230, 
            
                              width: double.infinity, // Set the desired width

                alignment: Alignment.center,
                decoration: BoxDecoration(
                  
                  borderRadius: BorderRadiusDirectional.circular(20),
                  color: Color.fromARGB(255, 0, 62, 169)
                ),
                child: Image.asset("assets/images/hizb.png"),
            )
           ])),

           SizedBox(height: 40),
Row(mainAxisAlignment: MainAxisAlignment.center,

children: [

  Image.asset("assets/images/facebook.png", width: 40,),
    SizedBox(width:10),
  Image.asset("assets/images/instagram.png", width: 40,),
    SizedBox(width:10),
  Image.asset("assets/images/web.png", width: 40,),
    SizedBox(width:10),
  Image.asset("assets/images/share.png", width: 40,),
    SizedBox(width:10),
  Image.asset("assets/images/gototop.png", width: 40,),
    SizedBox(width:10),


],),
SizedBox(height: 40),

            ],
          ),
        ),
      ),
    );
  }



  Widget secondBox(){
    return Container(
                      padding: const EdgeInsets.symmetric(horizontal:10.0, vertical: 10),
                      margin: const EdgeInsets.symmetric(horizontal:5.0),

      height: 140,
      width: double.infinity,
        decoration: BoxDecoration(
          color: Color.fromARGB(129, 0, 165, 165),
          borderRadius: BorderRadiusDirectional.circular(15)
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
Text("سوانح حیات", style: GoogleFonts.almarai(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),),
SizedBox(height: 15),
Text( textDirection: TextDirection.rtl,"از رشحاِت قلم:", style: GoogleFonts.almarai( fontSize: 10, color: Colors.white),),
Text( textDirection: TextDirection.rtl,"حضرت سّید محمد ظفر قادری", style: GoogleFonts.almarai( fontSize: 10, color: Colors.white),),
Text( textDirection: TextDirection.rtl,"قادری رحمة اهلل عليه", style: GoogleFonts.almarai( fontSize: 10, color: Colors.white),),
SizedBox(height:10),
                ],
              ),
              SizedBox(width:05),
               ClipRRect(
            borderRadius: BorderRadius.circular(20.0), // Radius of the corners
            child: Image.asset(
              "assets/images/sawana.png", // Replace with your image asset
              width: 110.0, // Set the desired width
              height: 110.0, // Set the desired height
              fit: BoxFit.fill, // Ensures the image covers the entire area
            ),
          ),
        ],),
      );
  }
}
