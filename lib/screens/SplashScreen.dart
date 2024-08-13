import 'package:flutter/material.dart';
import 'package:qalb/screens/HomeScreen/HomeScreen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> slideAnimationImage;
  late Animation<Offset> slideAnimationText;
  late Animation<double> fadeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    slideAnimationImage = Tween<Offset>(
      begin: const Offset(0, -0.5),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
    ));
    slideAnimationText = Tween<Offset>(
      begin: const Offset(0, 3),
      end: Offset(0, 0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
    ));

    fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    ));

    _controller.forward();

    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
            builder: (_) =>
                Homescreen()),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                FadeTransition(
                  opacity: fadeAnimation,
                  child: SlideTransition(
                    position: slideAnimationImage,
                    child: Image.asset(
                      'assets/images/logo.jpg',
                      height: 200,
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                FadeTransition(
                  opacity: fadeAnimation,
                  child: SlideTransition(
                    position: slideAnimationText,
                    child: const Text(
                      'Qalb - e - Saleem',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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
