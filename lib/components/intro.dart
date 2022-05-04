import 'package:flutter/material.dart';

import './buttons.dart';

class Intro extends StatelessWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Card(
        color: Colors.transparent,
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    "Hi,",
                    style: TextStyle(
                      fontSize: 60,
                      color: Color.fromARGB(255, 251, 58, 58),
                    ),
                  ),
                  Text(
                    " I'm,",
                    style: TextStyle(
                      fontSize: 60,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const Text(
                "Nilanka Biswas",
                style: TextStyle(
                  fontSize: 60,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              AboutMeButton(),
            ],
          ),
        ),
      ),
    );
  }
}
