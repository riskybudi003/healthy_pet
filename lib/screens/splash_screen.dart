import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healty_pet/screens/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    Future.delayed(const Duration(seconds: 5)).then((value) {
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => HomeScreen()),
        (route) => false, // Menghapus semua rute sebelumnya
      );
    });

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/Background.png',
              fit: BoxFit.cover, // Agar gambar memenuhi seluruh layar
            ),
          ),
          SafeArea(
            child: Center(
              child: Column(
                children: [
                  const SizedBox(height: 42),
                  Image.asset(
                    "assets/images/Logo.png",
                    height: 22,
                  ),
                  const SizedBox(
                    height: 73,
                  ),
                  RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          text: "Helping you\nto keep ",
                          style: GoogleFonts.manrope(
                              fontSize: 24,
                              color: const Color(0xFFDEE1FE),
                              letterSpacing: 3.5 / 100,
                              height: 152 / 100),
                          children: const [
                            TextSpan(
                                text: "Your Bestie",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800)),
                            TextSpan(text: "\nStay Healty")
                          ]))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
