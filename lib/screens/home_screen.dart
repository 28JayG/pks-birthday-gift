import 'package:flutter/material.dart';
import 'package:pk_birthday/screens/center_screen/center_screen.dart';
import 'package:pk_birthday/screens/photos_screen/photos_screen.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:pk_birthday/screens/poem_screen/poem_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController controller;


  @override
  void initState() {
    super.initState();

    controller = TabController(
      length: 3,
      vsync: this,
      initialIndex: 1,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: <Widget>[
          TabBarView(
            controller: controller,
            children: <Widget>[
              PoemScreen(),
              CenterScreen(),
              PhotosScreen(),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Colors.white,
              child: TabBar(
                labelColor: Theme.of(context).primaryColor,
                controller: controller,
                tabs: <Widget>[
                  Tab(
                    icon: Icon(MdiIcons.book),
                  ),
                  Tab(
                    icon: Icon(MdiIcons.circleMedium),
                  ),
                  Tab(
                    icon: Icon(MdiIcons.googlePhotos),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
