import 'package:flutter/material.dart';
import 'package:hannah/magic.dart';
import 'package:hannah/magic_clipped.dart';
import 'package:hannah/work_card.dart';
import 'package:hannah/work_data.dart';

import 'sizes.dart';

class WorkDash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
            Color(0xFF1b1e44),
            Color(0xFF2d3447),
          ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              tileMode: TileMode.clamp)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 50.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Work Experience",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 36.0,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                child: ListView.separated(
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return WorkCards(
                        title: wor[index].name,
                        desc: wor[index].desc,
                        year: wor[index].year,
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(width: size_12);
                    },
                    itemCount: wor.length),
              )
            ],
          ),
        ),
      ),
    );

    // return Scaffold(
    //   backgroundColor: Colors.white,
    //   body: Container(
    //     height: MediaQuery.of(context).size.height,
    //   child: ListView.separated(
    //       scrollDirection: Axis.vertical,
    //       itemBuilder: (context, index) {
    //         return WorkCards(

    //           title: wor[index].name,
    //           desc: wor[index].desc,
    //           year: wor[index].year,
    //         );
    //       },
    //       separatorBuilder: (context, index) {
    //         return SizedBox(width: size_12);
    //       },
    //       itemCount: wor.length),
    // ),
    // );
  }
}
