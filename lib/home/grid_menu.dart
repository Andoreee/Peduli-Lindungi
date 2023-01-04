import 'package:flutter/material.dart';

Row grid_menu() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        width: 348,
        height: 240,
        child: Stack(
          children: [
            Positioned(
              left: 138,
              top: 138,
              child: Image.asset(
                "assets/images/gridmenu/riwayat.png",
                width: 70,
                height: 70,
              ),
            ),
            Positioned(
              left: 276,
              top: 141,
              child: Image.asset(
                "assets/images/gridmenu/more.png",
                width: 70,
                height: 70,
              ),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.topRight,
                child: Image.asset(
                  "assets/images/gridmenu/aturan-perjalanan.png",
                  width: 70,
                  height: 70,
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 138,
              child: Image.asset(
                "assets/images/gridmenu/teledoktor.png",
                width: 70,
                height: 70,
              ),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  "assets/images/gridmenu/hasil-tes.png",
                  width: 70,
                  height: 70,
                ),
              ),
            ),
            Positioned(
              left: 2,
              top: 74,
              child: SizedBox(
                width: 66,
                height: 50,
                child: Text(
                  "Setifikat Vaksin",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Reem Kufi',
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 271,
              top: 76,
              child: SizedBox(
                width: 80,
                height: 50,
                child: Text(
                  "Aturan\nPerjalanan",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Reem Kufi',
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 145,
              top: 212,
              child: SizedBox(
                width: 66,
                height: 50,
                child: Text(
                  "Riwayat\nCheck-in",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Reem Kufi',
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 139,
              top: 74,
              child: SizedBox(
                width: 66,
                height: 50,
                child: Text(
                  "Hasil Tes Covid-19",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Reem Kufi',
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.bottomLeft,
                child: SizedBox(
                  width: 83,
                  height: 28,
                  child: Text(
                    "Teledokter",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Reem Kufi',
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.bottomRight,
                child: SizedBox(
                  width: 70,
                  height: 25,
                  child: Text(
                    "More",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Reem Kufi',
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.topLeft,
                child: Image.asset(
                  "assets/images/gridmenu/sertifikat-v.png",
                  width: 70,
                  height: 70,
                ),
              ),
            ),
          ],
        ),
      )
    ],
  );
}
