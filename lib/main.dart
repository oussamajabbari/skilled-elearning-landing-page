import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:skilled_elearning_landing_page/design_system.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Skilled elearning landing page challenge',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: SvgPicture.asset(
            'logo-dark.svg',
            semanticsLabel: 'skilled logo',
            height: 20,
            width: 79,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: MobileButton(
              backgroundColor: blue900,
              foregroundColor: Colors.white,
              text: 'Get Started',
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 64, horizontal: 20),
        child: Column(
          children: [
            Text(
              'Maximize skill, minimize budget',
              style: getTextPresetMobile1(color: blue900),
            ),
            Text(
              'Our modern courses across a range of in-demand skills will'
              'give you the knowledge you need to live the life you want.',
              style: getTextPreset5(color: waterlooGrey),
            ),
            MobileGradientButton(
              backgroundGradient: gradientPink,
              foregroundColor: Colors.white,
              text: "Get Started",
            ),
          ],
        ),
      ),
    );
  }
}
