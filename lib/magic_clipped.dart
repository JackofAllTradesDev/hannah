import 'package:flutter/material.dart';

import 'sizes.dart';

class MagicClipped extends StatelessWidget {
  final String imagePath;
  final String title;

  static const BorderRadius _cardBorderRadius =
      const BorderRadius.all(Radius.circular(size_12));

  const MagicClipped({Key key, this.imagePath, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      
      child: Stack(
        children: <Widget>[
          Image.asset(
            imagePath,
            fit: BoxFit.contain,
          ),
          Container(
            height: 180.0,
            color: Colors.transparent,
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  title.toUpperCase(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        blurRadius: 0.0,
                        color: Colors.black,
                        offset: Offset(-3.0, 0.8),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      // shape: RoundedRectangleBorder(
      //   borderRadius: BorderRadius.circular(12.0),
      // ),
      // elevation: 2,
      margin: EdgeInsets.all(10),
    );
  }
}
