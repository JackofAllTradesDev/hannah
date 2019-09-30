import 'package:flutter/material.dart';
import 'package:hannah/magic.dart';
import 'package:hannah/magic_clipped.dart';
import 'package:hannah/work_data.dart';

import 'network.dart';
import 'network_clipped.dart';
import 'sizes.dart';

class NetworkDash extends StatefulWidget {
  @override
  _NetDash createState() => _NetDash();
}

class _NetDash extends State<NetworkDash> {

  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: ListView.separated(
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return NetworkClipped(
                imagePath: net[index].imagePath,
                title: net[index].name,
                desc: net[index].description,
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(width: size_12);
            },
            itemCount: net.length),
      ),
    );
  }
}
