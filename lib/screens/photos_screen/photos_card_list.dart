import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:pk_birthday/screens/photos_screen/photos.dart';

List<Widget> photosList(BuildContext context) => List.generate(
      photo.length,
      (i) => InkWell(
            onTap: () {
              Navigator.of(context).push(
                PageRouteBuilder(
                  opaque: false,
                  barrierDismissible: true,
                  barrierColor: Colors.black.withOpacity(0.2),
                  maintainState: true,
                  pageBuilder: (context, _, __) => Container(
                    width: MediaQuery.of(context).size.width/1.2,
                    height: MediaQuery.of(context).size.height/1.5,
                    child: Card(
                      elevation: 0.0,
                      color: Colors.transparent,
                      child: Hero(
                            tag: photo[i],
                            child: Image.asset(
                              photo[i],
                              fit: BoxFit.contain,
                            ),
                          ),
                    ),
                  ),
                ),
              );
              print(MdiIcons.facebook.toString());
            },
            child: Card(
              elevation: 5.0,
              child: Container(
                child: Hero(
                  tag: photo[i],
                  child: Image.asset(
                    photo[i],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
    );
