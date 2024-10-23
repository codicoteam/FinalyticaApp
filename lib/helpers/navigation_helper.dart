import 'package:flutter/material.dart';


class Helpers {
  // Method to navigate to another screen with back function
  static void temporaryNavigator(BuildContext context, Widget nextScreen) {
    Navigator.push(context, MaterialPageRoute(builder: (c) => nextScreen));
  }

  // Method to navigate to another screen without back function
  static void permanentNavigator(BuildContext context, Widget nextScreen) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (c) => nextScreen));
  }

  // Method to navigate to previous screen
  static void back(BuildContext context) {
    Navigator.pop(context);
  }



  /// Function to remove HTML TAGS IN STRINGS


  /// This methods capitalizes the first word of a [String]
  static String capitalizeFirstLetter(String input) {
    if (input.isEmpty) {
      return input;
    }
    return input.substring(0, 1).toUpperCase() + input.substring(1);
  }
}

