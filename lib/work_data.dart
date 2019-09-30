import 'package:flutter/widgets.dart';

class Works {
  final String name;
  final String desc;
  final String year;

  Works(
      {@required this.name,
      @required this.desc,
      @required this.year});
}

Works firstCat = Works(
    name: "Programmer",
    desc: "Employee, Programmed to love you",
    year: "Batch 2019");
    
Works secondCat = Works(
    name: "Android/IOS Developer",
    desc: "Senior Dev, Baka sakaling madevelop tayong dalawa.",
    year: "2018-2019");

Works thirdCat = Works(
    name: "Project Manager",
    desc: "I can manage our relationship",
    year: "2019");




List<Works> wor = [firstCat, secondCat, thirdCat];