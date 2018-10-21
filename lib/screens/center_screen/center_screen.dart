import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CenterScreen extends StatefulWidget {
  final double width;

  const CenterScreen({Key key, this.width}) : super(key: key);

  @override
  _CenterScreenState createState() => _CenterScreenState();
}

class _CenterScreenState extends State<CenterScreen> {
  @override
  Widget build(BuildContext context) {
    Color primaryColor = Theme.of(context).primaryColor;

    double width = MediaQuery.of(context).size.width / 1.2;

    return Scaffold(
      body: Center(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Container(
            width: width,
            height: width * 16/9,
            decoration: BoxDecoration(
              border: Border.all(color: primaryColor, width: 5.0),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(
                  MdiIcons.cakeLayered,
                  size: 100.0,
                  color: primaryColor,
                ),
                Text(
                  'Happy\nBirthday\n'
                      'PK',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 75.0,
                    fontFamily: 'Comic_Sans',
                    fontWeight: FontWeight.bold,
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
