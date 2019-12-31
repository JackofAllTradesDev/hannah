import 'package:flutter/material.dart';
import 'package:hannah/categories.dart';
import 'package:hannah/dashboard.dart';
import 'package:palette_generator/palette_generator.dart';


class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: GestureDetector(
        onTap: () { _generatePalette(context, "assets/profile.jpg").then((_palette) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => MyDashboard(palette: _palette)));
        });
          
        },
        child: Padding(
          padding: const EdgeInsets.only(right: 16.0, bottom: 32),
          child: Container(
            child: Text(
              "START WITH ME",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/wolf.jpg"), fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, bottom: 120.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "A Little introduction",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.normal),
              ),
              Text(
                "OF WHO I AM",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 48,
                    fontWeight: FontWeight.w900),
              ),
              Text(
                "A LONE WOLF",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.normal),
              )
            ],
          ),
        ),
      ),
    );
  }
}

  Future<PaletteGenerator> _generatePalette(context, String imagePath) async {
    PaletteGenerator _paletteGenerator = await PaletteGenerator.fromImageProvider(AssetImage(imagePath),
        size: Size(110, 150), maximumColorCount: 20);

    return _paletteGenerator;
  }