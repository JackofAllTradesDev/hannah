import 'package:flutter/material.dart';

import 'sizes.dart';

class WorkCards extends StatelessWidget {
  final String desc;
  final String title;
  final String year;
  const WorkCards({Key key, this.desc, this.title, this.year})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: Card(
        elevation: 5,
        color: Color(0xFF1b1e44),
        child: new Container(
          padding: new EdgeInsets.only(top: 32.0, bottom: 32.0),
          child: new Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: new Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    title,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
             Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: new Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    desc,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: new Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    year,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
