import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:foodapp/Theme/color.dart';
import 'package:foodapp/Theme/size_config.dart';

class PizzaScreen extends StatelessWidget {
  const PizzaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pizaaData = [
      'assets/images/pizza-01.png',
      'assets/images/pizza-02.png',
      'assets/images/pizza-03.png'
    ];
    return Scaffold(
      body: Column(children: [
        CarouselSlider.builder(
          itemCount: pizaaData.length,
          itemBuilder: (BuildContext context, int i, int pageViewIndex) =>
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Image.asset(pizaaData[i])),
          options: CarouselOptions(
            height: resH(200, context),
            aspectRatio: 1,
            viewportFraction: 0.6,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: false,
            enlargeCenterPage: true,
          ),
        ),
      ]),
    );
  }
}
