import 'package:flutter/material.dart';

Color primary = const Color(0xFF687daf);

class Styles{
  static Color primaryColor = primary;
  static Color textColor = const Color(0xFF3b3b3b);
  static Color bgColor = const Color(0xFFeeedf2);
  static Color orangeColor = const Color(0xFFF37B67);
  static Color kakiColor = const Color(0xFFd2bdb6);
  static TextStyle textStyle = TextStyle(fontSize: 16, color: textColor, fontWeight:  FontWeight.w500);
  static TextStyle headLineStyle1 = TextStyle(fontSize: 26, color: textColor, fontWeight:  FontWeight.bold);
  static TextStyle headLineStyle2 = TextStyle(fontSize: 21, color: textColor, fontWeight:  FontWeight.bold);
  static TextStyle headLineStyle3 = TextStyle(fontSize: 16, color: Colors.grey.shade500, fontWeight:  FontWeight.w500);
  static TextStyle headLineStyle4 = TextStyle(fontSize: 13, color: Colors.grey.shade500, fontWeight:  FontWeight.w500);

}
//"primary" is a variable declared outside of the class "Styles"
//Hence, it can be accessed from anywhere, simply by using the variable name "primary".
//But, the variables used inside the class "Styles" can only be used outside of the class by the following syntax :
// <className>.variableName   ----->   eg. : Styles.textColor


//The main idea of using such a file is to be uniform and simple to assign colors to various parts of the app.
//To avoid using redundant style : TextStyle() widgets or backgroundColor widgets.

//Go to "main.dart" file to view the "primaryColor" variable
//Go to "home_screen.dart" to view the "Styles.bgColor" variable for the backgroundColor
//And also the style : TextStyle properties in the home screen.


//To use two properties within the same class outside, we use "copyWith()"
//Check the "Upcoming flights & View all" row in the home screen page.



