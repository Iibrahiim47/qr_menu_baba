import 'package:flutter/material.dart';
import 'package:qr_menu_baba/screerns/loginScreen/loginScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        ),
      );
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: const Color(0xffF9C22A),
        body: SizedBox(
          height: height,
          width: width,
          // color: const Color(0xffF9C22A),
          child: Center(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'images/logo_baba_koat.png',
                  ),
                ),
              ),
              height: height * 0.3,
              width: width * 0.6,
            ),
          ),
        ));
  }
}
