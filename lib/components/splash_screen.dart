import 'dart:async';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:peduli_diri/auth/login.dart';

class SplashScreenPage extends StatefulWidget {
  SplashScreenPage({Key key}) : super(key: key);
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    openSplashScreen();
  }

  openSplashScreen() async {
    //bisa diganti beberapa detik sesuai keinginan
    var durasiSplash = const Duration(seconds: 2);
    return Timer(durasiSplash, () {
      //pindah ke halaman home
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
        return Login();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff6980FD),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              child: Column(
                children: const [
                  Icon(FontAwesomeIcons.handHoldingHeart, size: 130, color: Colors.white,),
                  SizedBox(height: 20,),
                  Text(
                    "Peduli Lindungi", 
                    textAlign: TextAlign.center,
                    style: 
                      TextStyle(
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                        fontSize: 20 
                      ),
                  )]
                ),
            ),
            Container(
              child: Column(
                children: [
                  Text("Powered By:",
                  style: TextStyle(
                    color: Colors.white,
                  ),),
                  SizedBox(height: 10,),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Icon(FontAwesomeIcons.github, size: 50,color: Colors.white),SizedBox(width:20), Icon(FontAwesomeIcons.google, size: 50, color: Colors.white)],
                    )
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
