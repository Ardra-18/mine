//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mine/splash.dart';

void main() => runApp(
    const MaterialApp(debugShowCheckedModeBanner: false, home: MainPage()));

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'B_GREEN',
      /* theme: ThemeData(
        primaryColor: Colors.green, // Change the primary color   
        // accentColor: Colors.red, // Change the accent color
        backgroundColor: Colors.black,
        fontFamily: 'Roboto',
      ),*/
      home: SplashScreen(),
    );
  }
}
