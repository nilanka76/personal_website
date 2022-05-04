import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../models/responsive.dart';
import 'buttons.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: MediaQuery.of(context).size.width,
      // height: MediaQuery.of(context).size.height,
      color: Color.fromARGB(255, 151, 217, 255),
      child: Responsive.isDesktop(context)
          ? Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 100,
                right: 100,
                bottom: 60,
              ),
              child: Column(
                children: [
                  Container(
                    child: Text(
                      ".about()",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "     You are not the side character,\n you have to do something outstanding to get attention. UwU",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 20,
                            left: 8,
                          ),
                          child: Image.asset(
                            "assets/images/uwu.png",
                            width: 30,
                            height: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.green,
                          child: Image.asset(
                            'assets/images/totorobig.png',
                            height: MediaQuery.of(context).size.height * 0.8,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.green,
                          child: Column(
                            children: const [
                              Text(
                                "I am Nilanka (IGN: Muffin). I am a student, currently studying Computer Science and Mathematics.",
                                style: TextStyle(fontSize: 15),
                              ),
                              Text(
                                "Aaannnd... I'm an authentic Otaku. Anime, Coding, Video Games are my things. I can talk all day about these (^///^). If you ever want to talk just...",
                                style: TextStyle(fontSize: 15),
                              ),
                              ContactButton(),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.green,
                          child: Column(
                            children: const [
                              Text(
                                "Hello, world!",
                                style: TextStyle(
                                  fontSize: 40,
                                ),
                              ),
                              Text("Hello World"),
                              Text("Hello World"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          : Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
                bottom: 60,
              ),
              child: Column(
                children: [
                  Container(
                    child: const Text(
                      ".about()",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    child: FittedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "     You are not the side character,\n you have to do something outstanding to get attention. UwU",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 20,
                              left: 8,
                            ),
                            child: Image.asset(
                              "assets/images/uwu.png",
                              width: 30,
                              height: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.green,
                    padding: EdgeInsets.only(
                      top: 0,
                      bottom: 0,
                      left: 0,
                      right: 0,
                    ),
                    // height: MediaQuery.of(context).size.height * 0.4,
                    // width: MediaQuery.of(context).size.width * 0.4,
                    child: Image.asset(
                      'assets/images/totorobig.png',
                      height: MediaQuery.of(context).size.height * 0.4,
                      width: MediaQuery.of(context).size.height * 0.4,
                    ),
                  ),
                  Container(
                    color: Colors.green,
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          "Hello, world!",
                          style: TextStyle(
                            fontSize: 40,
                          ),
                        ),
                        Text("Hello World"),
                        Text("Hello World"),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.green,
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          "Hello, world!",
                          style: TextStyle(
                            fontSize: 40,
                          ),
                        ),
                        Text("Hello World"),
                        Text("Hello World"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
