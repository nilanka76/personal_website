import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:personal_website/components/background.dart';

import '../components/about.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Background(),
        ],
      ),
    );
  }
}
