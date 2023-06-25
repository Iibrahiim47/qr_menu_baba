// ignore_for_file: file_names, deprecated_member_use, prefer_typing_uninitialized_variables
import 'package:flutter/material.dart';
import 'package:qr_menu_baba/screerns/homescreen/home_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // var defaultTargetPlatform;
  // bool isMobile() {
  //   if (defaultTargetPlatform == TargetPlatform.iOS ||
  //       defaultTargetPlatform == TargetPlatform.android) {
  //     return true;
  //   } else {
  //     return false;
  //   }
  // }

///////instagram link//////////////////////
  String instaurl = 'https://instagram.com/so.khor?igshid=OGQ2MjdiOTE=';

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
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xffF9C22A),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                // color: Color(0xff9BAD87),
                // image: DecorationImage(
                //   fit: BoxFit.cover,
                //   image: AssetImage(
                //     'images/homebg1.jpg',
                //   ),
                // ),
                ),
            height: height,
            width: width,
          ),
          SizedBox(
            height: height,
            width: width,
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.1,
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
                    // reviewslink(googlemapreviewslink);
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
                      ),
                    ),
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
            ),
          ),
        ],
      ),
    );
  }
}