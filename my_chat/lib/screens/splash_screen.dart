import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_chat/api/apis.dart';
import 'package:my_chat/screens/auth/login_screen.dart';
import 'package:my_chat/screens/home_screen.dart';

import '../../main.dart';

//splash screen
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // animated init state for the message icon
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 2000), () {
      //exit full screen
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
      SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
          systemNavigationBarColor: Colors.white,
          statusBarColor: Colors.white));

      if (APIs.auth.currentUser != null) {
        log('\nUser: ${APIs.auth.currentUser}');
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => const HomeScreen()));
      } else {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => const LoginScreen()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    //Initializing media query(for getting device screen size)
    mq = MediaQuery.of(context).size;
    return Scaffold(
      //appbar
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Welcome To CHAT APP"), //defined in main file
      ),
      //body
      body: Stack(
        children: [
          //app logo
          Positioned(
              //set the icon size and proper dimensions
              top: mq.height * .05,
              right: mq.width * .25,
              width: mq.width * .5,
              child: Image.asset('images/mail-inbox-app.png')),
          //google login button
          Positioned(
            //set the icon size and proper dimensions
            top: mq.height * .60,
            width: mq.width,
            child: const Text(
              'MADE BY SWAROOP WITH ❤️',
              style: TextStyle(
                  fontSize: 16, color: Colors.black, letterSpacing: 0.5),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
