import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://flutter.dev');
final Uri _url2 = Uri.parse('https://flutter.dev');
final Uri _url3 = Uri.parse('https://www.mrs-dinastian.com/2019/12/mudahnya-mencari-informasi-kesehatan-di.html');
final Uri _url4 = Uri.parse('https://flutter.dev');
CarouselSlider carouselSlider() {
  return CarouselSlider(
    items: [
      InkWell(
        onTap: () => _launchUrl(),
        child: Container(
              margin: EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  image: AssetImage('assets/images/carousel/carousel-1.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
      ),
          Container(
            margin: EdgeInsets.all(3.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: AssetImage('assets/images/carousel/carousel-2.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          InkWell(
            onTap: () => _launchUrl3(),
            child: Container(
              margin: EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  image: AssetImage('assets/images/carousel/carousel-3.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(3.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: AssetImage('assets/images/carousel/carousel-4.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
    ],
    options: CarouselOptions(
            height: 250.0,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            viewportFraction: 0.8,
          ),
  );
}
Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}Future<void> _launchUrl2() async {
  if (!await launchUrl(_url2)) {
    throw 'Could not launch $_url2';
  }
}Future<void> _launchUrl3() async {
  if (!await launchUrl(_url3)) {
    throw 'Could not launch $_url3';
  }
}Future<void> _launchUrl4() async {
  if (!await launchUrl(_url4)) {
    throw 'Could not launch $_url4';
  }
}

