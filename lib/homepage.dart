import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool speak = false;
  bool keyboard = false;
  bool is_english = true;
  bool is_hindi = true;
  bool iconcolor = true;
  @override
  var decoration = BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(50)),
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.white, Color(0xfff3f6ff)]));
  var textstyle = GoogleFonts.hindSiliguri(
      textStyle: TextStyle(
          fontWeight: FontWeight.w500,
          color: Color(0xff0b3e3f),
          // letterSpacing: ,
          fontSize: 22));
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    print(height);
    print(width);
    return Scaffold(
        body: ListView(
      children: [
        Container(
          child: Stack(children: [
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      color: Color(0xff556EFC),
                      width: width / 2,
                      height: height / 2,
                    ),
                    Container(
                      color: Colors.white,
                      width: width / 2,
                      height: height / 2,
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      color: Color(0xfff3f6ff),
                      width: width / 2,
                      height: height / 2,
                    ),
                    Container(
                      color: Colors.white,
                      width: width / 2,
                      height: height / 2,
                    )
                  ],
                ),
              ],
            ),
            Column(children: [
              Container(
                child: Container(
                  child: Column(
                    children: [
                      SizedBox(height: height / 40),
                      Container(
                        height: 100,
                        // color: Colors.red,
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //Spacer(),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(2))),
                                  height: 5,
                                  width: 30,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(2))),
                                  height: 5,
                                  width: 15,
                                ),
                                //Spacer(),
                              ],
                            ),
                            Spacer(),
                            Container(
                              child: Text(
                                "Pluto Translator",
                                style: textstyle.copyWith(
                                    fontSize: 18, color: Colors.white),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                child: Image.asset(
                                  'assets/soundwave.png',
                                  color: Color(0xff3751FE),
                                  // fit: BoxFit.contain,
                                ),
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              height: 50,
                              width: 50,
                            ),
                            SizedBox(
                              width: 10,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height / 80,
                      ),
                      Container(
                        height: height / 5.33,
                        width: width,
                        child: Image.asset(
                          'assets/colorbackground.png',
                          fit: BoxFit.fill,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: height / 26.66),
                      Container(
                        child: Row(
                          children: [
                            Spacer(),
                            //SizedBox(width: 50),
                            Container(
                              child: Text(
                                "0:05 mins",
                                style: textstyle.copyWith(
                                    color: Colors.white,
                                    fontSize: height / 57.14),
                              ),
                            ),
                            SizedBox(width: width / 36),
                            Container(
                              child: Row(
                                children: [
                                  speak
                                      ? SizedBox(width: width / 72)
                                      : Container(),
                                  speak
                                      ? Text(
                                          "Speak Now",
                                          style: textstyle.copyWith(
                                              fontSize: 12,
                                              color: Colors.red,
                                              fontWeight: FontWeight.bold),
                                        )
                                      : Container(),
                                  SizedBox(width: width / 72),
                                  GestureDetector(
                                    onTap: () => {
                                      setState(() => {speak = !speak})
                                    },
                                    child: Container(
                                      height: height / 40,
                                      width: width / 18,
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(360 / 36))),
                                    ),
                                  ),
                                  SizedBox(width: width / 72),
                                ],
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(360 / 18))),
                              height: height / 26.6,
                              //width: width / 3.77,
                            ),
                            SizedBox(width: width / 13)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xff3751FE), Color(0xff556EFC)]),
                    // color: Color(0xff3751FE),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(50),
                        bottomLeft: Radius.circular(50))),
                height: height / 2.25,
              ),
              Container(
                decoration: decoration,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: height / 80,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: width / 12,
                        ),
                        Icon(
                          Icons.speaker_phone_sharp,
                          color: Color(0xff0b3e3f),
                          size: width / 20,
                        ),
                        SizedBox(
                          width: width / 36,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              is_english = !is_english;
                            });
                          },
                          child: Container(
                            child: is_english
                                ? Text(
                                    "English",
                                    style: textstyle.copyWith(fontSize: 18),
                                  )
                                : Text(
                                    "हिन्दी",
                                    style: textstyle.copyWith(fontSize: 18),
                                  ),
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.close),
                        SizedBox(
                          width: width / 36,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height / 40,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: width / 12,
                        ),
                        keyboard
                            ? Container(
                                width: width - 80,
                                height: 30,
                                child: TextField())
                            : is_english
                                ? Text(
                                    "Thank you for translating me..",
                                    style: textstyle,
                                  )
                                : Text(
                                    "मेरा अनुवाद करने के लिए धन्यवाद...",
                                    style: textstyle,
                                  )
                        // Text(
                        //   "Thank you for translating me..",
                        //   style: textstyle,
                        // ),
                      ],
                    ),
                    SizedBox(
                      height: height / 13.3,
                    ),
                    Row(
                      children: [
                        Spacer(),
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                keyboard = !keyboard;
                              });
                            },
                            child: Icon(Icons.keyboard)),
                        SizedBox(
                          width: width / 12,
                        )
                      ],
                    ),
                  ],
                ),
                height: height / 4.25,
                // color: Colors.red,
              ),
              Container(
                decoration: decoration,

                // decoration: decoration,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: height / 80,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: width / 12,
                        ),
                        Icon(
                          Icons.speaker_phone_sharp,
                          color: Color(0xff0b3e3f),
                          size: width / 20,
                        ),
                        SizedBox(
                          width: width / 36,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              is_english = !is_english;
                            });
                          },
                          child: Container(
                            child: is_english
                                ? Text(
                                    "हिन्दी",
                                    style: textstyle.copyWith(fontSize: 18),
                                  )
                                : Text(
                                    "English",
                                    style: textstyle.copyWith(fontSize: 18),
                                  ),
                          ),
                        ),
                        Spacer(),
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                iconcolor = !iconcolor;
                                print("iconcolor");
                                print(iconcolor);
                              });
                            },
                            child: Icon(Icons.star,
                                color:
                                    iconcolor ? Colors.yellow : Colors.grey)),
                        SizedBox(
                          width: width / 24,
                        ),
                        Icon(Icons.copy),
                        SizedBox(
                          width: width / 24,
                        ),
                        Icon(Icons.menu_rounded),
                        SizedBox(
                          width: width / 36,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height / 30,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: width / 12,
                        ),
                        is_english
                            ? Text(
                                "मेरा अनुवाद करने के लिए धन्यवाद...",
                                style: textstyle,
                              )
                            : Text(
                                "Thank you for translating me..",
                                style: textstyle,
                              ),
                      ],
                    ),
                    SizedBox(
                      height: height / 10,
                    ),
                    // Row(
                    //   children: [
                    //     Spacer(),
                    //     Icon(Icons.keyboard),
                    //     SizedBox(
                    //       width: 30,
                    //     )
                    //   ],
                    // ),
                  ],
                ),
                height: (height / 3) + 50 - (height / 72.72),
                // color: Colors.red,
              )
            ]),
          ]),
        ),
      ],
    ));
  }
}
