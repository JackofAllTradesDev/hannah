import 'package:flutter/material.dart';
import 'package:hannah/sizes.dart';

class ClippedImage extends StatelessWidget {
  final String imagePath;
  final bool compactMode;
  final String title;
  static const BorderRadius _cardBorderRadius =
      const BorderRadius.all(Radius.circular(size_12));

  ClippedImage({this.imagePath, this.compactMode, this.title});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Material(
          elevation: compactMode ? size_0 : size_8,
          borderRadius: _cardBorderRadius,
          color: Colors.transparent,
          child: ClipRRect(
            borderRadius: _cardBorderRadius,
            child: Image.asset(
              imagePath,
              height: compactMode ? 100 : 150,
              width: compactMode ? 80 : 110,
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        Align(
          child: Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12.0),
            child: Container(
              height: 14.0,
              width: 60,
                // color: Colors.blue,
                child: Center(
                  child: Text(
                    title,
                    style: TextStyle(fontSize: 12, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                )),
          ),
          alignment: Alignment.bottomRight,
        )
      ],
    );
  }
}
