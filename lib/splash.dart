import 'package:mine/bottomnav.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
        const Duration(seconds: 2),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const BottomPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(children: <Widget>[
        const Divider(
          height: 240.0,
          color: Colors.black,
        ),
        Image.asset(
          'assets/images/logo.png',
          fit: BoxFit.cover,
          repeat: ImageRepeat.noRepeat,
          width: 300.0,
        ),
        const Divider(
          height: 105.2,
          color: Colors.black,
        ),
      ]),
    );
  }
}
