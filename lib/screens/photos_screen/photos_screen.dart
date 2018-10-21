import 'package:flutter/material.dart';
import 'package:pk_birthday/screens/photos_screen/photos_card_list.dart';

class PhotosScreen extends StatefulWidget {
  @override
  PhotosScreenState createState() {
    return new PhotosScreenState();
  }
}

class PhotosScreenState extends State<PhotosScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Container(),
        title: Text(
          'My Priced Collection',
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontFamily: 'Comic_Sans'
          ),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: photosList(context),
      ),
    );
  }
}
