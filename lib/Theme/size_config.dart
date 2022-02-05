import 'package:flutter/material.dart';

class SizeConfig {
  late MediaQueryData _mediaQueryData;
  late double screenWidth;
  late double screenHeight;
  late double defaultSize;
  late Orientation orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

double resH(double inputHeight, BuildContext context) {
  //double screenHeight = MediaQuery.of(context).size.height;
  double screenHeight = MediaQuery.of(context).size.height;
  // 812 is the layout height that designer use
  return (inputHeight / 812.0) * screenHeight;
}

// Get the proportionate height as per screen size
double resW(double inputWidth, BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;
  // 375 is the layout width that designer use
  return (inputWidth / 375.0) * screenWidth;
}
