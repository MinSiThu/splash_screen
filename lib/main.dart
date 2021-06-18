import 'dart:async';
import 'package:flutter/material.dart';

/**
 * I used the following package.
 * https://pub.dev/packages/flutter_native_splash
 */
main() => runApp(HomeScreen());

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(
            "App is loaded...",
            style: TextStyle(
                color: Colors.black12,
                fontSize: 24,
                fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}

/**
 * SplashScreen Widget is not working natively.
 * I am using flutter_native_splash package
 * It can also be used for secondary splash screen.
 */
class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), () {
      return Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SplashScreen",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text(
            "App is starting...",
            style: TextStyle(
                color: Colors.black12,
                fontSize: 24,
                fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}


