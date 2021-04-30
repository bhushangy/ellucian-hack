import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:v_braille/util/SizeConfig.dart';
import 'package:v_braille/widgets/ModuleTiles.dart';

class VideosScreen extends StatefulWidget {
  @override
  _VideosScreenState createState() => _VideosScreenState();
}

class _VideosScreenState extends State<VideosScreen> {
  @override
  List<ModuleTile> moduleTiles = [
    ModuleTile(
      label: '',
      name: 'Video 1',
    ),
    ModuleTile(
      label: '',
      name: 'Video 2',
    ),
    ModuleTile(
      label: '',
      name: 'Video 4',
    ),
    ModuleTile(
      label: '',
      name: 'Video 5',
    ),
    ModuleTile(
      label: '',
      name: 'Video 6',
    ),
    ModuleTile(
      label: '',
      name: 'Video 7',
    ),
    ModuleTile(
      label: '',
      name: 'Video 8',
    ),
    ModuleTile(
      label: '',
      name: 'Video 9',
    ),
    ModuleTile(
      label: '',
      name: 'Video 10',
    ),
    ModuleTile(
      label: '',
      name: 'Video 11',
    ),
    ModuleTile(
      label: '',
      name: 'Video 12',
    ),
    ModuleTile(
      label: '',
      name: 'Video 13',
    ),
    ModuleTile(
      label: '',
      name: 'Video 14',
    )
  ];
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        children: [
          Container()
          // Padding(
          //   padding: EdgeInsets.only(top: 4.0),
          //   child: ListView(
          //     scrollDirection: Axis.vertical,
          //     shrinkWrap: true,
          //     physics: ScrollPhysics(parent: BouncingScrollPhysics()),
          //     children: moduleTiles,
          //   ),
          // ),
        ],
      ),
    );
  }
}
