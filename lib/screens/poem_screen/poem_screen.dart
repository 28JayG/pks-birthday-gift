import 'package:flutter/material.dart';

class PoemScreen extends StatefulWidget {
  @override
  _PoemScreenState createState() => _PoemScreenState();
}

class _PoemScreenState extends State<PoemScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Container(),
        centerTitle: true,
        title: Text(
          'A Little Wait More',
          style: TextStyle(
            fontFamily: 'Comic_Sans',
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 30.0),
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              'I closed my eyes and saw you\n'
                  'Like a morning bliss and a drop of dew.\n'
                  'Lost in the world was I,\n'
                  'You held my hand when looked at the sky.\n'
                  'A wrecked ship in a sea of hope;\n'
                  'Fighting and struggling, when your\n'
                  'Voice Guided me to shore.\n'
                  'A walk in the park, hands held and a\n'
                  'smile again,\n'
                  'Eyes so deep and heart so sweet;\n'
                  'A little wait till our lips will meet.\n',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontFamily: 'Comic_Sans',
                color: Theme.of(context).primaryColor,
                fontSize: 20.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
