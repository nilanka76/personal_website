import 'dart:ui';

import 'package:flutter/material.dart';
import './intro.dart';

import 'about.dart';

class Background extends StatelessWidget {
  const Background({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          pinned: true,
          snap: false,
          floating: false,
          expandedHeight: MediaQuery.of(context).size.height,
          flexibleSpace: FlexibleSpaceBar(
            title: Text('nilankBiswas.about()'),
            background: Stack(
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
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                ),
                const Intro(),
              ],
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            About(),
            About(),
          ]),
        ),
      ],
    );
  }
}
