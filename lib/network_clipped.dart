import 'package:flutter/material.dart';

import 'sizes.dart';

class NetworkClipped extends StatelessWidget {
  final String imagePath;
  final String title;
  final String desc;

  const NetworkClipped({Key key, this.imagePath, this.title, this.desc})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    // return  Card(
    //   child: Container(
    //     height: 180.0,
    //     decoration: BoxDecoration(
    //       image: DecorationImage(
    //         image: AssetImage(imagePath),
    //         fit: BoxFit.fill,
    //         alignment: Alignment.topCenter,
    //       ),
    //     ),
    //     child: Text("YOUR TEXT"),
    //   ),
    // );
    return Card(
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Stack(
        children: <Widget>[
          Image.asset(
            imagePath,
            fit: BoxFit.fill,
          ),
          Positioned.fill(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      color: Colors.transparent,
                      child: Column(
                        children: <Widget>[
                          Text(
                            desc,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                color: Colors.white,
                                shadows: [
                                  Shadow(
                                    blurRadius: 0.0,
                                    color: Colors.black,
                                    offset: Offset(-3.0, 0.8),
                                  ),
                                ]),
                          ),
                          Text(title,
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                  color: Colors.white,
                                  shadows: [
                                    Shadow(
                                      blurRadius: 0.0,
                                      color: Colors.black,
                                      offset: Offset(-3.0, 0.8),
                                    )
                                  ])),
                        ],
                      )),
                ),
              ],
            ),
          )
        ],
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 5,
      margin: EdgeInsets.all(10),
    );
  }
}
