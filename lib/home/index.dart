import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:peduli_diri/components/appbar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:peduli_diri/home/carousel_slider.dart';
import 'package:peduli_diri/home/grid_menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key, this.Username}) : super(key: key);
  final String Username;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var widths = 0.6;
    if (width < 600) widths = 1;
    if (width < 350) widths = 1.5;
    if (width < 200) widths = 2;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: userAppBar(Username, context),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Container(
                      child: Image.asset(
                    'assets/images/scan.png',
                    scale: widths,
                  )),
                  Container(
                    height: 7,
                    width: width,
                    margin: EdgeInsets.only(top: 25),
                    color: Color(0xffE4E4E4),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView(
                children: [
                  grid_menu(),
                  SizedBox(height: 25,),
                  Text("  Informasi Kesehatan",
                  style: TextStyle(
                    fontFamily: "Reem Kufi",
                    fontSize: 20
                  ),),
                  carouselSlider()
                ],
              )
            )
          ],
        ));
  }
}
