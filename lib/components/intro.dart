import 'package:flutter/material.dart';

class Intro extends StatelessWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Text(
            "Hello, world!",
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
            ),
          ),
          Text(
            "Hello, world!",
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
