import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:peduli_diri/auth/setting.dart';

AppBar userAppBar(String Username, BuildContext context) {
  return AppBar(
    automaticallyImplyLeading: false,
    elevation: 0,
    backgroundColor: Colors.white,
    title: Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            child: Row(
              children: [
                const Icon(
                  FontAwesomeIcons.solidUserCircle,
                  color: Colors.black,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Hai, $Username',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
            onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Setting(Username: Username)));
                  },
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
