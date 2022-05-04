import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Skills extends StatelessWidget {
  const Skills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
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
              'assets/images/friendsarmy.png',
              // height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.height * 0.8,
            ),
          ),
          Container(
            color: Colors.green,
            child: Column(
              children: const [
                Text(
                  "Let's be internet BFFs",
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
    );
  }
}
