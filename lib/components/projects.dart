import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../models/responsive.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Responsive.isDesktop(context)
          ? Column(
              children: [
                Container(
                  color: Colors.green,
                  child: Text(
                    "Hello, world!",
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  ),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Expanded(
                    child: Container(
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
                  ),
                  Expanded(
                    child: Container(
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
                        'assets/images/catfromside.png',
                        height: MediaQuery.of(context).size.height * 0.4,
                        width: MediaQuery.of(context).size.height * 0.4,
                      ),
                    ),
                  ),
                ]),
              ],
            )
          : Column(
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
                    'assets/images/catfromtop.png',
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: MediaQuery.of(context).size.height * 0.4,
                  ),
                ),
                Container(
                  color: Colors.green,
                  child: Text(
                    "Hello, world!",
                    style: TextStyle(
                      fontSize: 40,
                    ),
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
    );
  }
}
