import 'package:flutter/material.dart';
import 'package:hannah/fadeAnimation.dart';

class SelfPage extends StatefulWidget {
  @override
  _SelfPage createState() => _SelfPage();
}

class _SelfPage extends State<SelfPage> with SingleTickerProviderStateMixin {
  PageController _pageController;
  int totalPage = 5;

  void _onScroll() {}

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
    )..addListener(_onScroll);

    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          makePage(
              page: 1,
              image: 'assets/wolf.jpeg',
              title: 'A lone Wolf',
              description:
                  '"Throw me to the wolves and Ill return leading the pack". I became my own worst critic, that was how I understood to survive. I couldn’t understand what it meant to lean on someone, to be able to rely on anyone else.'),
          makePage(
              page: 2,
              image: 'assets/bone.png',
              title: 'PTSD',
              description:
                  'I don’t know where I’m running to, I just know that I have to run tonight.'),
          makePage(
              page: 3,
              image: 'assets/dimensions.jpg',
              title: 'Member ng Ben&Ben',
              description:
                  '"Kay tagal ko nang nag-iisa andiyan ka lang pala." Wala mang talento pero kaya kang pilin araw-araw - BEN&BEN 2019'),
          makePage(
              page: 4,
              image: 'assets/mask.png',
              title: 'Death',
              description:
                  "The theme of death feels appropriate as I run, wishing I was dead."),
          makePage(
              page: 5,
              image: 'assets/selfff.jpg',
              title: 'Pessimist',
              description:
                  "I looked around and I told myself I was safe, I was fine but I was convinced that something was wrong"),
        ],
      ),
    );
  }

  Widget makePage({image, title, description, page}) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
          0.3,
          0.9
        ], colors: [
          Colors.black.withOpacity(.9),
          Colors.black.withOpacity(.2),
        ])),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: <Widget>[
                    FadeAnimation(
                        2,
                        Text(
                          page.toString(),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        )),
                    Text(
                      '/' + totalPage.toString(),
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    )
                  ],
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      FadeAnimation(
                          1,
                          Text(
                            title,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 50,
                                height: 1.2,
                                fontWeight: FontWeight.bold),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      FadeAnimation(
                          1.5,
                          Row(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(right: 3),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 15,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 3),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 15,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 3),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 15,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 3),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 15,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 3),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 15,
                                ),
                              ),
                              Text(
                                '5.0',
                                style: TextStyle(color: Colors.white70),
                              ),
                              Text(
                                '(143)',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              )
                            ],
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      FadeAnimation(
                          2,
                          Padding(
                            padding: const EdgeInsets.only(right: 50),
                            child: Text(
                              description,
                              style: TextStyle(
                                  color: Colors.white.withOpacity(.7),
                                  height: 1.9,
                                  fontSize: 15),
                                  textAlign: TextAlign.justify,
                            ),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      FadeAnimation(
                          2.5,
                          Text(
                            'Something you must know.',
                            style: TextStyle(color: Colors.white),
                          )),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
