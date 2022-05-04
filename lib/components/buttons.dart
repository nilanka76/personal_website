import 'package:flutter/material.dart';

import '../models/page_controller.dart';

class AboutMeButton extends StatelessWidget {
  const AboutMeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Material(
        color: Colors.transparent,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        borderRadius: BorderRadius.circular(10),
        child: InkWell(
          splashColor: Colors.red,
          onTap: () {
            pageController.animateToPage(
              1,
              duration: const Duration(milliseconds: 1000),
              curve: Curves.easeInOut,
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Ink.image(
                    image: const AssetImage('assets/images/noface.png'),
                    width: 50,
                    height: 50,
                    fit: BoxFit.contain),
                const Text(
                  "About Me",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 251, 58, 58),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ContactButton extends StatelessWidget {
  const ContactButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Material(
        color: Colors.transparent,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        borderRadius: BorderRadius.circular(10),
        child: InkWell(
          splashColor: Colors.red,
          onTap: () {
            pageController.animateToPage(
              1,
              duration: const Duration(milliseconds: 1000),
              curve: Curves.easeInOut,
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "About Me",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 251, 58, 58),
                  ),
                ),
                Ink.image(
                    image: const AssetImage('assets/images/totoroface.png'),
                    width: 50,
                    height: 50,
                    fit: BoxFit.contain),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
