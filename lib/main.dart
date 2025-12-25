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

class MyCard extends StatelessWidget {
  final String iconName;
  final String cardTitle;
  final String cardText;

  const MyCard({
    super.key,
    required this.iconName,
    required this.cardTitle,
    required this.cardText,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            SizedBox(height: 28),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(11, 6, 22, 141),
                    blurRadius: 20.0,
                  ),
                ],
              ),
              child: Card(
                elevation: 0,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(32, 64, 32, 40),
                  // padding: const EdgeInsets.all(0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        cardTitle,
                        style: getTextPresetMobile4(color: blue900),
                      ),
                      SizedBox(height: 24),
                      Text(
                        cardText,
                        style: getTextPreset6(color: waterlooGrey),
                      ),
                      SizedBox(height: 24),
                      TextButton(
                        onPressed: () {},
                        style: linkButtonStyle,
                        child: Text('Get Started'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          left: 32,
          child: SvgPicture.asset(iconName, width: 56, height: 56),
        ),
      ],
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 64, horizontal: 20),
              child: Column(
                children: [
                  Text(
                    'Maximize skill, minimize budget',
                    style: getTextPresetMobile1(color: blue900),
                  ),
                  SizedBox(height: 24),
                  Text(
                    'Our modern courses across a range of in-demand skills will'
                    'give you the knowledge you need to live the life you want.',
                    style: getTextPreset5(color: waterlooGrey),
                  ),
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      MobileGradientButton(
                        backgroundGradient: gradientPreset1,
                        foregroundColor: Colors.white,
                        text: "Get Started",
                      ),
                    ],
                  ),
                  SizedBox(height: 48),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(4, 10, 4, 9),
                    child: Image.asset('images/hero-mobile.png'),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[Colors.white, Color(0xFFF0F1FF)],
                ),
              ),
              padding: const EdgeInsets.fromLTRB(20, 64, 20, 80),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(32),
                    decoration: BoxDecoration(
                      gradient: gradientPreset1,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Text(
                      'Check out our most popular courses!',
                      style: getTextPresetMobile3(color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 32),
                  MyCard(
                    iconName: 'icon-animation.svg',
                    cardTitle: 'Animation',
                    cardText:
                        'Learn the latest animation '
                        'techniques to create stunning '
                        'motion design and captivate your audience.',
                  ),
                  SizedBox(height: 32),
                  MyCard(
                    iconName: 'icon-design.svg',
                    cardTitle: 'Design',
                    cardText:
                        'Create beautiful, usable interfaces '
                        'to help shape the future of how the web looks.',
                  ),
                  SizedBox(height: 32),
                  MyCard(
                    iconName: 'icon-photography.svg',
                    cardTitle: 'Photography',
                    cardText:
                        'Explore critical fundamentals like lighting, '
                        'composition, and focus to capture exceptional photos.',
                  ),
                  SizedBox(height: 32),
                  MyCard(
                    iconName: 'icon-crypto.svg',
                    cardTitle: 'Crypto',
                    cardText:
                        'All you need to know to get started investing in crypto. '
                        'Go from beginner to advanced with this 54 hour course.',
                  ),
                  SizedBox(height: 32),
                  MyCard(
                    iconName: 'icon-business.svg',
                    cardTitle: 'Business',
                    cardText:
                        'A step-by-step playbook to help you start, scale, '
                        'and sustain your business without outside investment.',
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 24, horizontal: 20),
              decoration: BoxDecoration(color: blue900),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(
                    'logo-light.svg',
                    semanticsLabel: 'skilled logo',
                    height: 20,
                    width: 79,
                  ),
                  MobileGradientButton(
                    backgroundGradient: gradientPreset2,
                    foregroundColor: Colors.white,
                    text: 'Get Started',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//SingleChildScrollView