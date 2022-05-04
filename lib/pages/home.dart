import 'dart:ui';
import 'package:flutter/material.dart';
import '../models/smooth_scroll.dart';

import '../components/intro.dart';
import '../components/about.dart';
import '../components/projects.dart';
import '../components/skills.dart';

import '../models/page_controller.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/background.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 0.5, sigmaY: 0.5),
                child: Container(
                  color: Colors.black.withOpacity(0.7),
                ),
              ),
            ),
            ListView(
              scrollDirection: Axis.vertical,
              controller: pageController,
              physics: const BouncingScrollPhysics(),
              children: const <Widget>[
                Intro(),
                About(),
                Projects(),
                Skills(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// class CustomScrollBehaviour extends MaterialScrollBehavior {
//   // Override behavior methods and getters like dragDevices
//   @override
//   Set<PointerDeviceKind> get dragDevices => {
//         PointerDeviceKind.touch,
//         PointerDeviceKind.mouse,
//         // etc.
//       };
// }
