import 'package:flutter/material.dart';
import './pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Nilanka Biswas",
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   primarySwatch: Colors.green,
      //   errorColor: Colors.red,
      //   fontFamily: 'DiamondSignature',
      //   textTheme: ThemeData.light().textTheme.copyWith(
      //         headline5: const TextStyle(
      //           fontFamily: 'DiamondSignature',
      //           fontSize: 60,
      //           fontWeight: FontWeight.bold,
      //         ),
      //         button: const TextStyle(
      //           fontFamily: 'DiamondSignature',
      //           fontSize: 40,
      //           color: Colors.black,
      //         ),
      //       ),
      // ),
      home: Home(),
    );
  }
}
