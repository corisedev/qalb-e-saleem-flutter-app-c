import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:qalb/providers/DataProvider.dart';

class Majlis_Sound extends StatefulWidget {
  String  image;
  String  englishText;
  String  urduText;
  int  index;
   Majlis_Sound({super.key, required this.image,  required this.index,required this.urduText,required this.englishText});

  @override
  State<Majlis_Sound> createState() => _Majlis_SoundState();
}

class _Majlis_SoundState extends State<Majlis_Sound> {
   @override
  void initState() {
    super.initState();
    // Load data in initState
    Provider.of<DataProvider>(context, listen: false)
        .getMajlisThumbUrl();
  }
    double position = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
        child: Column(
          children: [
            SizedBox(height: 70),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                                
                Row(
                  children: [
                    Container(alignment: Alignment.center,width: 25,height:25,decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.grey[500]),
                    child: Text("${widget.index+1}", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(width:10),
                    Text("مجلس", style: GoogleFonts.almarai(fontSize: 20, fontWeight:FontWeight.bold, color: Colors.grey[500])),
                  ],
                ),
                Image.asset("assets/images/back-arrow-grey.png",width:25),
              ],
            ),
            SizedBox(height: 50),
            Hero(
              tag: "image",
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0), // Radius of the corners
                child: Image.network(
                  widget.image,
                  width: double.infinity, 
                  height: 320.0,
                  fit: BoxFit.fill,
                ),
              ),
            ),
                        SizedBox(height: 40),


Text(
            "${widget.urduText}",
            style: GoogleFonts.almarai(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold
            ),
          ),
          Text(
            textDirection: TextDirection.ltr,
            overflow: TextOverflow.ellipsis,
            widget.englishText,
            style: GoogleFonts.almarai(
              fontSize: 13,
              color: Colors.black,
            ),

            
          ),

          SizedBox(height: 40),
           Stack(
            clipBehavior: Clip.none,
        alignment: Alignment.centerLeft,
        children: [
          // Horizontal Line
          Container(
            height: 2.0,
            width: double.infinity,
            color: Colors.grey[300],
          ),
          // Ball (timeline.png)
          Positioned(
            left: position, // Adjust the ball's position
            child: GestureDetector(
              onHorizontalDragUpdate: (details) {
                 setState(() {
                  position = (details.localPosition.dx / MediaQuery.of(context).size.width).clamp(0.0, 1.0);
                });
              },
              child: Container(
                width: 35, height:35,
                decoration: BoxDecoration(
                  shape: BoxShape.circle, border: Border.all(color: Colors.white, width:3)
                ),
                
                child: Image.asset(
                  fit: BoxFit.fill,
                  'assets/images/timeline.png',
                  width: 30.0,  // Adjust based on your image size
                  height: 30.0,
                ),
              ),
            ),
          ),
        ],
      ),

                SizedBox(height: 40),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    GestureDetector(
      onTap: (){
                // Navigator.push(context, MaterialPageRoute(builder: (context) => TextScreen(image: widget.image, name: widget.name,),));

      },
      child: Image.asset("assets/images/read.png", width: 35,)),
    Image.asset("assets/images/play.png", width: 60,),
    Image.asset("assets/images/share-grey.png", width: 35,),
  ],
)
          ],
        ),
      ),
    );
  }
}