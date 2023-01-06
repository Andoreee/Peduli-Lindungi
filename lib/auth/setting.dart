import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:peduli_diri/auth/login.dart';
import 'package:peduli_diri/components/splash_screen.dart';

class Setting extends StatelessWidget {
  const Setting({super.key, required this.Username});
  final String Username;
  Row menuSetting(String textMenu, Icon iconMenu) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            iconMenu,
            SizedBox(
              width: 8,
            ),
            Text(
              textMenu,
              style: TextStyle(fontSize: 16, fontFamily: "Reem Kufi"),
            ),
          ],
        ),
        Row(
          children: [
            Icon(FontAwesomeIcons.angleRight),
            SizedBox(
              width: 34,
            )
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff6980FD),
        title: Text("Pengaturan"),
      ),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 27, top: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          FontAwesomeIcons.userCircle,
                          color: Colors.black,
                          size: 43,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              Username,
                              style: TextStyle(
                                  fontFamily: "Roboto",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "+62-87742-1663",
                              style: TextStyle(
                                  color: Color(0xff8F8888),
                                  fontSize: 16,
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(FontAwesomeIcons.edit),
                        SizedBox(
                          width: 31,
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: 7,
                width: width,
                margin: EdgeInsets.only(top: 15),
                color: Color(0xffE4E4E4),
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 31, top: 20, bottom: 14),
                    child: menuSetting("Riwayat dan Tiket Vaksin",
                        Icon(FontAwesomeIcons.fileLines, size: 20)),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 27),
                    child: Divider(thickness: 0.4, color: Colors.black),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 31, top: 20, bottom: 14),
                    child: menuSetting("Sertifikat Vaksin",
                        Icon(FontAwesomeIcons.medal, size: 20)),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 27),
                    child: Divider(thickness: 0.4, color: Colors.black),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 31, top: 20, bottom: 14),
                    child: menuSetting("Beri Penilaian Aplikasi",
                        Icon(FontAwesomeIcons.star, size: 20)),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 27),
                    child: Divider(thickness: 0.4, color: Colors.black),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 31, top: 20, bottom: 14),
                    child: menuSetting(
                        "Bahasa", Icon(FontAwesomeIcons.globe, size: 20)),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (_) => SplashScreenPage())); 
                },
                child: const Text(
                  'KELUAR AKUN',
                  style:
                      TextStyle(color: const Color(0xff6980FD), fontSize: 20),
                ),
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(const Size(230, 50)),
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  side: MaterialStateProperty.all(
                    const BorderSide(
                      color: Colors.black12,
                      width: 0.6,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'KEMBALI',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(const Size(150, 50)),
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  side: MaterialStateProperty.all(
                    const BorderSide(
                      color: Colors.black12,
                      width: 0.6,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              )
            ],
          )
        ],
      ),
    );
  }
}
