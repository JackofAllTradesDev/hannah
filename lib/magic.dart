import 'package:flutter/widgets.dart';

class Magic {
  final String name;
  final String imagePath;
  final String description;

  Magic(
      {@required this.name,
      @required this.imagePath,
      @required this.description});
}

Magic firstCat = Magic(
    name: "Amanda Minicucci",
    imagePath: "assets/test1.png",
    description: "Limutin na ang mundo");
    
Magic secondCat = Magic(
    name: "Amanda Minicucci",
    imagePath: "assets/seccond.png",
    description: "Nang magkasama tayo");

Magic thirdCat = Magic(
    name: "Amanda Minicucci",
    imagePath: "assets/third.png",
    description: "Sunod sa bawat galaw");

Magic fourthCat = Magic(
    name: "Amanda Minicucci",
    imagePath: "assets/fourth.png",
    description: "hindi na maliligaw");

Magic fifthCat = Magic(
    name: "Amanda Minicucci",
   imagePath: "assets/last.png",
    description: "Mundo'y magiging ikaw");





List<Magic> mag = [firstCat, secondCat, thirdCat, fourthCat, fifthCat];