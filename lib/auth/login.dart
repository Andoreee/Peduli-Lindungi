import 'package:flutter/material.dart';
import 'package:peduli_diri/auth/register.dart';
import 'package:peduli_diri/home/index.dart';
import 'package:peduli_diri/helpers/dbhelper.dart';
import '../models/mUser.dart';

class Login extends StatefulWidget {
  const Login({Key key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();

}

class _LoginState extends State<Login> {
    final TextEditingController Username = new TextEditingController();
    final TextEditingController Password = new TextEditingController();
  DbHelper dbHelper = DbHelper();
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff6980FD),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                  width: 379,
                  height: 350,
                  padding: EdgeInsets.only(
                    top: 20,
                  ),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          width: 379,
                          height: 58.90,
                          child: Text(
                            "LOGIN",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                        ),
                        const SizedBox(height: 79.64),
                        Container(
                            width: 372,
                            height: 191,
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 360,
                                    height: 39,
                                    padding: const EdgeInsets.only(
                                      right: 229,
                                      top: 5,
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: const [
                                        SizedBox(
                                          width: 131,
                                          height: double.infinity,
                                          child: Text(
                                            "Username",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 24,
                                              fontFamily: "Roboto",
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 10.60),
                                  Opacity(
                                    opacity: 0.54,
                                    child: Container(
                                      width: 364,
                                      height: 29,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            width: 364,
                                            height: 29,
                                            child: TextField(
                                              autofocus: true,
                                              autofillHints: ['Admin', 'Andoreee', "Andrean Revaldi"],
                                                controller: Username,
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontStyle: FontStyle.italic,
                                                ),
                                                decoration:
                                                    const InputDecoration(
                                                  border: InputBorder.none,
                                                  hintText: "Masukan Username",
                                                  hintStyle: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20,
                                                    fontStyle: FontStyle.italic,
                                                  ),
                                                )),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10.60),
                                  Opacity(
                                    opacity: 0.40,
                                    child: Container(
                                      width: 372,
                                      height: 1,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 372,
                                            height: 1,
                                            color: Colors.white,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10.60),
                                  Container(
                                    width: 360,
                                    height: 39,
                                    padding: const EdgeInsets.only(
                                      right: 229,
                                      top: 5,
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: const [
                                        SizedBox(
                                          width: 131,
                                          height: double.infinity,
                                          child: Text(
                                            "PASSWORD",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 24,
                                              fontFamily: "Roboto",
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 10.60),
                                  Opacity(
                                    opacity: 0.54,
                                    child: Container(
                                      width: 352,
                                      height: 29,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            width: 352,
                                            height: 29,
                                            child: TextField(
                                              obscureText: _isObscure,
                                              enableSuggestions: false,
                                              autocorrect: false,
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontStyle: FontStyle.italic,
                                                ),
                                                decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  hintText: "Masukan Password",
                                                  hintStyle: const TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20,
                                                    fontStyle: FontStyle.italic,
                                                  ),
                                                  suffixIcon: IconButton(
                                                  icon: Icon(
                                                      _isObscure ? Icons.visibility : Icons.visibility_off, color: Colors.white,),
                                                  onPressed: () {
                                                    setState(() {
                                                      _isObscure = !_isObscure;
                                                    });
                                                  })
                                                )),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10.60),
                                  Opacity(
                                    opacity: 0.40,
                                    child: Container(
                                      width: 372,
                                      height: 1,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 372,
                                            height: 1,
                                            color: Colors.white,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ])),
                      ])),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: Colors.white,
                            width: 2,
                          ),
                        ),
                        child: Text(
                          "REGISTER",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Register()))
                    ),
                    InkWell(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: Colors.white,
                            width: 2,
                          ),
                        ),
                        child: Text(
                          "LOGIN",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: const Color(0xff6980FD),
                            fontSize: 17,
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      onTap: () {
                        if (Username.text == "Kosong") {
                          showDialog(context: context, builder: (context) => 
                                        AlertDialog(
                                            content: const Text("Username tidak boleh kosong!"),
                                            actions: [
                                              TextButton(
                                                child: const Text('Ok'),
                                                onPressed: () => Navigator.of(context).pop(),
                                              )
                                            ],
                                          )
                                        ); 
                        }
                        else{
                          dbHelper.logIn(Username.text, Password.text);
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      HomePage()));
                        }
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
