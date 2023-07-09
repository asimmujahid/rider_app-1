import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rider_app/Authentication/signup.dart';
import 'package:rider_app/mainscreens%20copy/main_screen.dart';
import 'package:rider_app/mainscreens/mains_screen.dart';

import 'global.dart';
// import 'package:logistic_app/Authentication/login.dart';
// //import 'package:logistic_app/Authentication/login.dart';
// import 'package:logistic_app/Authentication/signup.dart';
// import 'package:logistic_app/globalfolder/global.dart';
// import 'package:logistic_app/mainscreens/main_screen.dart';
//import 'package:payload/Authentications/login_screen.dart';
//import 'package:payload/Authentications/signup_screen.dart';
//import 'package:payload/mainscreens/main_screen.dart';

class MySplash extends StatefulWidget {
  const MySplash({super.key});

  @override
  State<MySplash> createState() => _MySplashState();
}

class _MySplashState extends State<MySplash> {
  startTimer() {
    Timer(const Duration(seconds: 3), () async {
              Navigator.push(
            context, MaterialPageRoute(builder: (c) => signup_page()));
      if (await fAuth.currentUser != null) {
        currentfirebaseUser = fAuth.currentUser;
        Navigator.push(
            context, MaterialPageRoute(builder: (c) => Main_Screen()));
      } else {
      //  Navigator.push(
      //      context, MaterialPageRoute(builder: (c) => login_page()));
     }
    });
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 45, 10, 107),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 250,
              ),
              Image.asset("assets/images/riderimage.jpeg"),
              SizedBox(
                height: 20,
              ),
              const Text(
                "PayLoad Logistic App",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
    //
    // Container(
    //   color: Colors.black,
    //   child: Padding(
    //     padding: const EdgeInsets.all(16.0),
    //     child: Column(
    //       children: [
    //        const SizedBox(height: 50,),
    //        Image.asset("assets/images/cargo.jpg"),
    //           SizedBox(height: 20,),
    //        const Text("PayLoad Logistic App", style: TextStyle(color: Colors.white,
    //         fontSize: 30, fontWeight: FontWeight.bold,
    //         ),)
    //       ],
    //     ),
    //   ),
    // );
  }
}
