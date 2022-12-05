import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';


class AppLayout{
  static getSize(BuildContext context){
    return MediaQuery.of(context).size;
  }
  static getScreenHeight(){
    return Get.height; //Get is the name of the package we imported and edited the pubspec.yaml file with.
  }
  static getScreenWidth() {
    return Get.width;
  }
  //This function first gets the proportion of the screen height : no. of pixels required ratio
  //And returns the value by which the screen size differs from
  static getHeight(double pixels){
    double x = getScreenHeight()/pixels;
    return getScreenHeight()/x;
  }

  static getWidth(double pixels){
    double x = getScreenWidth()/pixels;
    return getScreenWidth()/x;
  }

}

/*
class AppLayout{
  static getSize(BuildContext context){
      return MediaQuery.of(context).size;
  }
}
*/