import 'package:flutter/widgets.dart';

class Network {
  final String name;
  final String imagePath;
  final String description;

  Network(
      {@required this.name,
      @required this.imagePath,
      @required this.description});
}

Network firstCat = Network(
    name: "Donna Cruz",
    imagePath: "assets/donna.jpg",
    description: "Kapag tumibok ang puso.. Lagot kana.. Siguradong huli ka.");
    
Network secondCat = Network(
    name: "Daniel Ceasar",
    imagePath: "assets/danielcaesar.jpg",
    description: "Get You");

Network thirdCat = Network(
    name: "Mighty Pula 2018",
    imagePath: "assets/mighty.jpg",
    description: "Ah Sarado");

Network fourthCat = Network(
    name: "Cassie 2019",
    imagePath: "assets/cassie.png",
    description: "You do note");






List<Network> net = [firstCat, secondCat, thirdCat, fourthCat];