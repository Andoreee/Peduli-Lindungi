import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _teledoc = Uri.parse('https://www.halodoc.com/');
final Uri _pelayanankesehatan = Uri.parse('https://yankes.kemkes.go.id/app/siranap/');
final Uri _aturanPerjalanan = Uri.parse('https://faq.kemkes.go.id/faq/protokol-kesehatan-bagi-pelaku-perjalanan-luar-negeri-ppln-memasuki-indonesia-i-health-protocol-for-international-travelers-ppln-entering-indonesia');
final Uri _statistik = Uri.parse('https://covid19.go.id/peta-sebaran');
Row grid_menu() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        width: 348,
        height: 260,
        child: Stack(
          children: [
            Positioned(
              left: 138,
              top: 138,
              child: InkWell(
                onTap: () => _aturanPerjalananUrl(),
                child: Image.asset(
                  "assets/images/gridmenu/aturan-perjalanan.png",
                  width: 70,
                  height: 70,
                ),
              ),
            ),
            Positioned(
              left: 276,
              top: 141,
              child: Image.asset(
                "assets/images/gridmenu/riwayat.png",
                width: 70,
                height: 70,
              ),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.topRight,
                child: InkWell(
                onTap: () => _pelayananKesehatan(),
                  child: Image.asset(
                    "assets/images/gridmenu/pelayanan-kesehatan.png",
                    width: 70,
                    height: 70,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 138,
              child: InkWell(
                onTap: () => _teledocUrl(),
                child: Image.asset(
                  "assets/images/gridmenu/teledoktor.png",
                  width: 70,
                  height: 70,
                ),
              ),
            ),
            Positioned.fill(
             child: Align(
                alignment: Alignment.topCenter,
                child: InkWell(
                  onTap: () => _statistikCovid(),
                  child: Image.asset(
                    "assets/images/gridmenu/statistik.png",
                    width: 70,
                    height: 70,
                  ),
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
                  "Cari Kamar\nRumah Sakit",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Reem Kufi',
                    color: Colors.black,
                    fontSize: 13,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 135,
              top: 212,
              child: SizedBox(
                width: 80,
                height: 80,
                child: Text(
                  "Aturan Perjalanan",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Reem Kufi',
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const Positioned(
              left: 139,
              top: 74,
              child: SizedBox(
                width: 66,
                height: 50,
                child: Text(
                  "Statistik\nCovid-19",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Reem Kufi',
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const Positioned.fill(
              child: Align(
                alignment: Alignment.bottomLeft,
                child: SizedBox(
                  width: 80,
                  height: 45,
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
            const Positioned.fill(
              child: Align(
                alignment: Alignment.bottomRight,
                child: SizedBox(
                  width: 70,
                  height: 50,
                  child: Text(
                    "Riwayat Check-in",
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
Future<void> _teledocUrl() async {
  if (!await launchUrl(_teledoc)) {
    throw 'Could not launch $_teledoc';
  }
}
Future<void> _pelayananKesehatan() async {
  if (!await launchUrl(_pelayanankesehatan)) {
    throw 'Could not launch $_pelayanankesehatan';
  }
}
Future<void> _statistikCovid() async {
  if (!await launchUrl(_statistik)) {
    throw 'Could not launch $_statistik';
  }
}
Future<void> _aturanPerjalananUrl() async {
  if (!await launchUrl(_aturanPerjalanan)) {
    throw 'Could not launch $_aturanPerjalanan';
  }
}