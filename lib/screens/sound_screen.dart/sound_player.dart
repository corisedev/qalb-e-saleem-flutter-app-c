import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qalb/screens/sound_screen.dart/text_screen.dart';

class SoundPlayer extends StatefulWidget {
  final String image;
  final String name;
  final String sub;
  final String audioPath;

  SoundPlayer({
    super.key,
    required this.image,
    required this.name,
    required this.sub,
    required this.audioPath,
  });

  @override
  State<SoundPlayer> createState() => _SoundPlayerState();
}

class _SoundPlayerState extends State<SoundPlayer> {
  final AudioPlayer _audioPlayer = AudioPlayer();
  bool _isPlaying = false;
  Duration _duration = Duration.zero;
  Duration _position = Duration.zero;
  // double position = 0.0;

  @override
  void initState() {
    super.initState();

    _audioPlayer.onDurationChanged.listen((duration) {
      setState(() {
        _duration = duration;
      });
    });

    _audioPlayer.onPositionChanged.listen((position) {
      setState(() {
        _position = position;
      });
    });

    _audioPlayer.onPlayerComplete.listen((_) {
      setState(() {
        _isPlaying = false;
        _position = Duration.zero;
      });
    });
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  void _togglePlayStop() async {
    if (_isPlaying) {
      await _audioPlayer.pause();
      setState(() {
        _isPlaying = false;
      });
    } else {
      try {
        await _audioPlayer.play(AssetSource(widget.audioPath));
        setState(() {
          _isPlaying = true;
        });
      } catch (e) {
        print('Error playing audio: $e');
      }
    }
  }

  void _seekAudio(double value) async {
    final position = Duration(seconds: value.toInt());
    await _audioPlayer.seek(position);
    setState(() {
      _position = position;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 70),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("قلبِ سلیم",
                        style: GoogleFonts.almarai(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[500])),
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Image.asset("assets/images/back-arrow-grey.png",
                            width: 25)),
                  ],
                ),
              ),
              SizedBox(height: 50),
              Hero(
                tag: "image",
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset(
                    widget.image,
                    width: double.infinity,
                    height: 320.0,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text(
                widget.name,
                style: GoogleFonts.almarai(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                textDirection: TextDirection.rtl,
                overflow: TextOverflow.ellipsis,
                widget.sub,
                style: GoogleFonts.almarai(
                  fontSize: 13,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 40),
              // Stack(
              //   clipBehavior: Clip.none,
              //   alignment: Alignment.centerLeft,
              //   children: [
              //     Container(
              //       height: 2.0,
              //       width: double.infinity,
              //       color: Colors.grey[300],
              //     ),
              //     Positioned(
              //       left: position,
              //       child: GestureDetector(
              //         onHorizontalDragUpdate: (details) {
              //           setState(() {
              //             position = (details.localPosition.dx /
              //                     MediaQuery.of(context).size.width)
              //                 .clamp(0.0, 1.0);
              //           });
              //         },
              //         child: Container(
              //           width: 35,
              //           height: 35,
              //           decoration: BoxDecoration(
              //               shape: BoxShape.circle,
              //               border: Border.all(color: Colors.white, width: 3)),
              //           child: Image.asset(
              //             fit: BoxFit.fill,
              //             'assets/images/timeline.png',
              //             width: 30.0,
              //             height: 30.0,
              //           ),
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  activeTrackColor: Colors.grey,
                  inactiveTrackColor: Colors.grey[300],
                  thumbColor: Colors.grey,
                  thumbShape: CustomRoundSliderThumbShape(),
                  overlayColor: Colors.grey.withOpacity(0.2),
                  trackHeight: 4.0,
                ),
                child: Slider(
                  value: _position.inSeconds.toDouble(),
                  min: 0.0,
                  max: _duration.inSeconds.toDouble(),
                  onChanged: (value) {
                    _seekAudio(value);
                  },
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TextScreen(
                                image: widget.image,
                                name: widget.name,
                              ),
                            ));
                      },
                      child: Image.asset(
                        "assets/images/read.png",
                        width: 35,
                      )),
                  GestureDetector(
                    onTap: _togglePlayStop,
                    child: Image.asset(
                      _isPlaying
                          ? "assets/images/play.png"
                          : "assets/images/play.png",
                      width: 60,
                    ),
                  ),
                  Image.asset(
                    "assets/images/share-grey.png",
                    width: 35,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// -----------------------------slider style------------------------------------
class CustomRoundSliderThumbShape extends SliderComponentShape {
  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size(24.0, 24.0);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
    required Size sizeWithOverflow,
  }) {
    final Canvas canvas = context.canvas;

    // Draw outer grey circle
    final Paint outerPaint = Paint()
      ..color = sliderTheme.thumbColor!
      ..style = PaintingStyle.fill;

    canvas.drawCircle(center, 12.0, outerPaint);

    // Draw inner white circle
    final Paint innerPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    canvas.drawCircle(center, 5.0, innerPaint); // Small white circle
  }
}
