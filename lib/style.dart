import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Palette
const cyan_1 = Color(0xFF00FFE8);
const cyan_2 = Color(0xFF00C6B4);
const cyan_3 = Color(0xFF017B70);
const cyan_4 = Color(0x30003B35);

const green = Color(0xFF00E676);
const yellow = Colors.yellowAccent;
const red = Color(0xFFFF1744);
const blue = Colors.lightBlueAccent;

/// Black & White
const white = Colors.white60;
const grey_light = Color(0xFFe1e6e8);
const grey = Color(0xFF898c8c);
const charcoal_light = Color(0xFF4a4a4a);
const charcoal = Color(0xFF292929);
const charcoal_dark = Color(0xFF1A1A1A);
const black = Colors.black;
const semi_transparent = Colors.black87;
const transparent = Color(0x00ffffff);
const box_shadow = Color(0x0d000000);
const overlay = Color.fromRGBO(0, 0, 0, 80);

///
final kAppTheme = _buildAppTheme();

ThemeData _buildAppTheme() {
  final base = ThemeData(
    brightness: Brightness.dark,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    primaryColor: cyan_1,
    primaryColorLight: cyan_2,
    primaryColorDark: cyan_3,
    accentColor: blue,
    backgroundColor: charcoal_dark,
    scaffoldBackgroundColor: charcoal_dark,
    // fontFamily: 'Quicksand',
    dividerTheme: DividerThemeData(
      color: grey_light,
      thickness: 2.0,
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderSide: const BorderSide(color: cyan_1, width: 0.0),
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
      ),
      fillColor: blue,
      labelStyle: TextStyle(
        color: cyan_1,
      ),
    ),
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 100.0,
        color: white,
        fontWeight: FontWeight.w200,
      ),
      headline2: TextStyle(
        fontSize: 90.0,
        color: white,
        fontWeight: FontWeight.w200,
      ),
      headline3: TextStyle(
        fontSize: 45.0,
        color: white,
        fontWeight: FontWeight.w200,
      ),
      headline4: TextStyle(
        fontSize: 35.0,
        color: white,
        fontWeight: FontWeight.w200,
      ),
      headline5: TextStyle(
        fontSize: 25.0,
        color: white,
        fontWeight: FontWeight.w200,
      ),
      headline6: TextStyle(
        fontSize: 20.0,
        color: white,
        fontWeight: FontWeight.w200,
      ),
      subtitle1: TextStyle(
        fontSize: 18.0,
        color: white,
        fontWeight: FontWeight.w200,
      ),
      bodyText2: TextStyle(
        color: white,
        fontWeight: FontWeight.w200,
      ),
      bodyText1: TextStyle(
        color: white,
        fontWeight: FontWeight.w200,
      ),
    ),
    primaryTextTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 100.0,
        color: cyan_1,
        fontWeight: FontWeight.w200,
      ),
      headline2: TextStyle(
        fontSize: 90.0,
        color: cyan_1,
        fontWeight: FontWeight.w200,
      ),
      headline3: TextStyle(
        fontSize: 45.0,
        color: cyan_1,
        fontWeight: FontWeight.w200,
      ),
      headline4: TextStyle(
        fontSize: 35.0,
        color: cyan_1,
        fontWeight: FontWeight.w200,
      ),
      headline5: TextStyle(
        fontSize: 25.0,
        color: cyan_1,
        fontWeight: FontWeight.w200,
      ),
      headline6: TextStyle(
        fontSize: 20.0,
        color: cyan_1,
        fontWeight: FontWeight.w200,
      ),
      subtitle1: TextStyle(
        fontSize: 18.0,
        color: cyan_1,
        fontWeight: FontWeight.w200,
      ),
      bodyText2: TextStyle(
        color: cyan_1,
        fontWeight: FontWeight.w200,
      ),
      bodyText1: TextStyle(
        color: cyan_1,
        fontWeight: FontWeight.w200,
      ),
    ),
    accentTextTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 100.0,
        color: blue,
        fontWeight: FontWeight.w200,
      ),
      headline2: TextStyle(
        fontSize: 90.0,
        color: blue,
        fontWeight: FontWeight.w200,
      ),
      headline3: TextStyle(
        fontSize: 45.0,
        color: blue,
        fontWeight: FontWeight.w200,
      ),
      headline4: TextStyle(
        fontSize: 35.0,
        color: blue,
        fontWeight: FontWeight.w200,
      ),
      headline5: TextStyle(
        fontSize: 25.0,
        color: blue,
        fontWeight: FontWeight.w200,
      ),
      headline6: TextStyle(
        fontSize: 20.0,
        color: blue,
        fontWeight: FontWeight.w200,
      ),
      subtitle1: TextStyle(
        fontSize: 18.0,
        color: blue,
        fontWeight: FontWeight.w200,
      ),
      bodyText2: TextStyle(
        color: blue,
        fontWeight: FontWeight.w200,
      ),
      bodyText1: TextStyle(
        color: blue,
        fontWeight: FontWeight.w200,
      ),
    ),
  );

  return base;
}
