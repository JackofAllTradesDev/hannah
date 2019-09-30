import 'package:flutter/material.dart';
import 'package:hannah/categories.dart';
import 'package:hannah/name_widget.dart';
import 'package:hannah/self.dart';
import 'package:hannah/sizes.dart';
import 'package:hannah/skills.dart';
import 'package:hannah/text_styles.dart';
import 'package:hannah/work_page.dart';
import 'package:palette_generator/palette_generator.dart';

import 'clipped_image.dart';
import 'magic_page.dart';
import 'network_page.dart';

class MyDashboard extends StatelessWidget {
  final PaletteGenerator palette;
  Category category;

  MyDashboard({this.palette});
  @override
  Widget build(BuildContext context) {
    print(category);
    return Scaffold(
        body: Stack(children: <Widget>[
      Image.asset(
        "assets/tests.jpg",
        height: double.infinity,
        width: double.infinity,
        fit: BoxFit.fitHeight,
      ),
      Container(
        color: palette.darkMutedColor.color.withOpacity(0.8),
      ),
      Padding(
          padding: const EdgeInsets.only(
              left: size_40, right: size_20, bottom: size_20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: size_120,
              ),
              NameWidget(
                name: "Jaymon Rivera",
                style:
                    nameBigStyle.copyWith(color: palette.lightMutedColor.color),
              ),
              SizedBox(height: size_8),
              Text("Mobile Developer",
                  style: descriptionBoldStyle.copyWith(
                      color: palette.lightMutedColor.color)),
              SizedBox(height: size_20),
              Expanded(
                flex: 2,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Text(
                    "Hi! Im a Computer Science graduate studied at STI Academic Center of Las Piñas. I am giving you a short introduction of me.\n \nI do a lot of work and thinking, I have thousands of ideas that people can benefit mostly people that needs help. I love you, I mean I love the work that I am doing I could do this forever. \n\nMost of the time I am sleeping ang slacking off but my mind doesn't do that my mind keeps on generating ideas sometimes I cant even sleep cause my mind are full of it. \n\nSince I met you Hannah Ty. You're always on my mind and there's no 1, 013, 146 english words on the dictionary that can describe how much I love you. I am not gonna rush things but I just want you to know that I already fell in love with you.",
                    style: descriptionStyle,
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
              SizedBox(height: size_20),
              Text("Pick anything to know me more.".toUpperCase(),
                  style: descriptionBoldStyle),
              SizedBox(height: size_8),
              Container(
                height: size_100,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                          onTap: () {
                            print(index);
                            if (index == 0) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SelfPage()));
                            }
                            else if (index == 3){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MagicDash()));
                            }
                            else if (index == 1){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MyAppSkills()));
                            }
                            else if (index == 2){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => WorkDash()));
                            }
                              else if (index == 4){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => NetworkDash()));
                            }
                          },
                          child: ClippedImage(
                            compactMode: true,
                            imagePath: cats[index].imagePath,
                            title: cats[index].description,
                          ));
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(width: size_12);
                    },
                    itemCount: cats.length),
              ),
            ],
          ))
    ]));
  }
}
