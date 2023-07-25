// ignore_for_file: file_names, deprecated_member_use, prefer_typing_uninitialized_variables
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_menu_baba/controller/get_controller.dart';
import 'package:qr_menu_baba/screerns/baba/homescreen/home_screen.dart';
import 'package:qr_menu_baba/screerns/kout/kout_homescreen/kout_home_screen.dart';
import 'package:qr_menu_baba/screerns/review_form.dart/review.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
///////instagram link//////////////////////
  String instaurl = 'https://www.instagram.com/baba.cafee/';

  Future<void> instaapp(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: true,
        forceWebView: false,
        headers: <String, String>{'header_key': 'header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  //////////google reviews///////////////
  // String googlemapreviewslink = 'https://g.page/r/CcTZVdHELwILEAI/review ';

  // Future<void> reviewslink(String url) async {
  //   if (await canLaunch(url)) {
  //     await launch(
  //       url,
  //       forceSafariVC: true,
  //       forceWebView: false,
  //       headers: <String, String>{'header_key': 'header_value'},
  //     );
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }

  @override
  void initState() {
    Get.put(CategoryController());
    CategoryController.to.getCatagoriesList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xffF9C22A),
      body: Stack(children: [
        SizedBox(
            height: height,
            width: width,
            child: Padding(
                padding: EdgeInsets.only(
                  left: width * 0.04,
                  right: width * 0.04,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: height * 0.02,
                    ),

                    Align(
                      alignment: Alignment.centerLeft,
                      child: Card(
                        color: const Color(0xffDB6439),
                        elevation: 10,
                        shape: const CircleBorder(),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ReviesPage(),
                              ),
                            );
                          },
                          child: Container(
                            decoration: const BoxDecoration(
                                color: Color(0xffDB6439),
                                shape: BoxShape.circle),
                            height: height * 0.04,
                            width: width * 0.08,
                            child: const Icon(
                              Icons.sentiment_satisfied_outlined,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.08,
                    ),
                    Container(
                      height: height * 0.1,
                      width: width * 0.2,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        'images/logo_baba_koat.png',
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),

                    SizedBox(
                      height: height * 0.05,
                      width: width * 0.4,
                      child: Center(
                        child: Text(
                          'Value * View * Victory ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: width * 0.02,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: height * 0.03,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ),
                        );
                      },
                      child: Container(
                        height: height * 0.07,
                        width: width * 0.34,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                            5,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Baba ',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: width * 0.035,
                                // color: const Color(0xffDB6439),
                                color: Colors.amber),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const KoutHomePage(),
                          ),
                        );
                      },
                      child: Container(
                        height: height * 0.07,
                        width: width * 0.35,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                            5,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Kout',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: width * 0.035,
                              color: const Color(0xffED1B24),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    InkWell(
                      onTap: () {
                        instaapp(instaurl);
                      },
                      child: Container(
                        height: height * 0.07,
                        width: width * 0.35,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                            5,
                          ),
                        ),
                        child: Center(
                            child: Text(
                          'Instagram',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: width * 0.035,
                          ),
                        )),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    // InkWell(
                    //   onTap: () {
                    //     reviewslink(googlemapreviewslink);
                    //   },
                    //   child: Container(
                    //     height: height * 0.07,
                    //     width: width * 0.35,
                    //     decoration: BoxDecoration(
                    //       color: Colors.white,
                    //       borderRadius: BorderRadius.circular(
                    //         5,
                    //       ),
                    //     ),
                    //     child: Center(
                    //       child: Text(
                    //         'Reviews',
                    //         style: TextStyle(
                    //           fontWeight: FontWeight.w600,
                    //           fontSize: width * 0.035,
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ))),
      ]),
    );
  }
}
