import 'package:flutter/widgets.dart';

class Category {
  final String name;
  final String imagePath;
  final String description;

  Category(
      {@required this.name,
      @required this.imagePath,
      @required this.description});
}

Category firstCat = Category(
    name: "Amanda Minicucci",
    imagePath: "assets/one.png",
    description: "Self");
    
Category secondCat = Category(
    name: "Amanda Minicucci",
    imagePath: "assets/two.png",
    description: "Skills");

Category thirdCat = Category(
    name: "Amanda Minicucci",
    imagePath: "assets/three.png",
    description: "Work");

Category fourthCat = Category(
    name: "Amanda Minicucci",
    imagePath: "assets/four.png",
    description: "Magic");

Category fifthCat = Category(
    name: "Amanda Minicucci",
   imagePath: "assets/five.png",
    description: "Experiences");

Category sixthCat = Category(
    name: "Amanda Minicucci",
    imagePath: "assets/six.png",
    description: "Network");



List<Category> cats = [firstCat, secondCat, thirdCat, fourthCat, sixthCat];