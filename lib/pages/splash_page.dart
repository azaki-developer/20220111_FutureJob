import 'dart:async';

import 'package:flutter/material.dart';
import 'package:job_application/theme.dart';
import 'started_page.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StartState();
  }
}

class StartState extends State<SplashScreenPage> {
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 2);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => GetStartedPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4141A4),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset(
                'assets/logo.png',
                height: 76,
                width: 59,
              ),
              padding: EdgeInsets.only(top: 20),
            ),
            SizedBox(height: 50),
            Text(
              'FUTURE JOBS',
              style: splashTextStyle,
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
            )
          ],
        ),
      ),
    );
  }
}
