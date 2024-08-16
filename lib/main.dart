
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qalb/firebase_options.dart';
import 'package:qalb/providers/DataProvider.dart';
import 'package:qalb/screens/SplashScreen.dart';
import 'package:qalb/utils/firebase_methods.dart';

//     3B8ABF27-63E1-4443-8862-BD2DF60F5F1F debug token
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  final result = await FirebaseData.storageRef.listAll();

  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => DataProvider())],
      child: MyApp(),
    ),
  );
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
      home: Splashscreen(),
    );
  }
}
