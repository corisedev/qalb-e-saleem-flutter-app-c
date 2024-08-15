import 'package:flutter/material.dart';
import 'package:qalb/screens/Shajr_e_Qadria/Shajr_e_Qadria.dart';
import 'package:qalb/screens/SplashScreen.dart';
import 'package:qalb/screens/hawashi_wa_hawalajat.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ShajrEQadriaScreen(),
    );
  }
}
