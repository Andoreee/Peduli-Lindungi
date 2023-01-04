import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

AppBar userAppBar(String Username) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    title: Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Icon(
                FontAwesomeIcons.userCircle,
                color: Colors.black,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Hai, $Username',
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
          Container(
              child: Icon(
            FontAwesomeIcons.solidBell,
            color: Colors.black,
          ))
        ],
      ),
    ),
  );
}
