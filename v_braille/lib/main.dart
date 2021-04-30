import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:v_braille/screens/BraillePad.dart';
import 'package:v_braille/screens/TextToBraille.dart';
import 'package:v_braille/screens/BrailleToText.dart';
import 'package:v_braille/screens/SplashScreen.dart';
import 'package:v_braille/util/Mappings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {

    return MaterialApp(
      routes: {
        //'/home': (context) => TextToBraille(),
        '/texttobraille': (context) => TextToBraille(),
        '/firstcharacter': (context) => BraillePad(Mappings.brailleOutput[0]),
        '/brailletotext': (context) => BrailleToText(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        accentColor: Colors.indigo,
        primarySwatch: Colors.indigo,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
