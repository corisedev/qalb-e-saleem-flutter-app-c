import 'package:flutter/material.dart';
import 'package:qalb/screens/HomeScreen/GradiantContainer.dart';
import 'package:qalb/screens/HomeScreen/smallContainer.dart';

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
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.29,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset(
                    'assets/images/logo.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmallContainer(
                      backgroundColor: Colors.transparent,
                      imagePath: 'assets/images/logo.jpg',
                      text: 'Image',
                    ),
                    SmallContainer(
                      backgroundColor: const Color.fromARGB(255, 20, 5, 128),
                      imagePath: '',
                      text: 'Blue',
                    ),
                    SmallContainer(
                      backgroundColor: Colors.purple,
                      imagePath: '',
                      text: 'Purple',
                    ),
                    SmallContainer(
                      backgroundColor: Colors.green,
                      imagePath: '',
                      text: 'Hello',
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GradientImageContainer(
                gradientColors: [
                  Color.fromARGB(255, 123, 184, 123),
                  Colors.green,
                ],
                imagePath: 'assets/images/logo.jpg',
                Headingtext: 'Hello',
              ),
              GradientImageContainer(
                gradientColors: [
                  const Color.fromARGB(255, 153, 138, 239),
                  Color.fromARGB(255, 42, 95, 187),
                ],
                imagePath: 'assets/images/logo.jpg',
                Headingtext: 'Hello',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
