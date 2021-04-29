import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:v_braille/screens/NotesScreen.dart';
import 'package:v_braille/screens/VideosScreen.dart';
import 'package:v_braille/util/SizeConfig.dart';

class InsideModule extends StatefulWidget {
  String name, label;
  InsideModule({this.label, this.name});
  @override
  _InsideModuleState createState() => _InsideModuleState();
}

class _InsideModuleState extends State<InsideModule>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  ScrollController _scrollViewController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
    _scrollViewController = ScrollController(initialScrollOffset: 0.0);
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollViewController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: NestedScrollView(
        controller: _scrollViewController,
        headerSliverBuilder: (BuildContext context, bool boxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              brightness: Brightness.dark,
              titleSpacing: 0.0,
              title: Text(
                widget.name,
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: SizeConfig.safeBlockHorizontal * 4.5),
              ),
              pinned: true,
              floating: true,
              forceElevated: false,
              bottom: TabBar(
                indicatorColor: Colors.white,
                tabs: <Widget>[
                  Tab(
                    icon: Icon(Icons.bookmark_sharp),
                    text: 'Notes',
                  ),
                  Tab(
                    icon: Icon(Icons.video_settings_sharp),
                    text: 'Videos',
                  )
                ],
                controller: _tabController,
              ),
            )
          ];
        },
        body: TabBarView(
          children: <Widget>[NotesScreen(), VideosScreen()],
          controller: _tabController,
        ),
      ),
    );
  }
}
