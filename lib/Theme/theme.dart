import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import './color.dart';

ThemeData theme() {
  return ThemeData(
    fontFamily: GoogleFonts.pacifico().fontFamily,
    textTheme: textTheme(),
    appBarTheme: appBarTheme(),
    inputDecorationTheme: inputDecorationTheme(),
    scaffoldBackgroundColor: Colors.white,
    highlightColor: Colors.indigoAccent.withOpacity(0.20),
    splashColor: Colors.tealAccent.withOpacity(0.15),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: <TargetPlatform, PageTransitionsBuilder>{
        TargetPlatform.android: FadeThroughPageTransitionsBuilder(),
        TargetPlatform.iOS: FadeThroughPageTransitionsBuilder(),
      },
    ),
  );
}

TextTheme textTheme() {
  return const TextTheme(
    bodyText1: TextStyle(color: titleColor),
    bodyText2: TextStyle(color: textColor),
    headline1: TextStyle(color: titleColor),
    headline2: TextStyle(color: titleColor),
    headline3: TextStyle(color: titleColor),
    headline4: TextStyle(color: titleColor),
    headline5: TextStyle(color: titleColor),
    headline6: TextStyle(color: subtitleColor),
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    color: Colors.transparent,
    elevation: 0,
    systemOverlayStyle: const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.transparent, // navigation bar color
      statusBarColor: Colors.transparent, // status bar color
      statusBarBrightness: Brightness.dark, //status bar brigtness
      statusBarIconBrightness: Brightness.dark, //status barIcon Brightness
      systemNavigationBarDividerColor:
          Colors.transparent, //Navigation bar divider color
      systemNavigationBarIconBrightness: Brightness.dark,
    ), //navigation bar icon),
    iconTheme: const IconThemeData(color: mainColor),
    centerTitle: true,
    titleTextStyle: TextStyle(
        color: titleColor,
        fontFamily: GoogleFonts.pacifico().fontFamily,
        fontSize: 18),
  );
}

OutlineInputBorder outlineBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: const BorderSide(color: borderColor),
    gapPadding: 15,
  );
}

OutlineInputBorder focusBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: const BorderSide(color: mainColor),
    gapPadding: 10,
  );
}

InputDecorationTheme inputDecorationTheme() {
  return InputDecorationTheme(
    labelStyle: const TextStyle(color: subtitleColor),
    hintStyle: TextStyle(color: subtitleColor.withOpacity(0.3)),
    alignLabelWithHint: true,
    fillColor: mainColor,
    //floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
    enabledBorder: outlineBorder(),
    focusedBorder: focusBorder(),
    border: outlineBorder(),
  );
}
