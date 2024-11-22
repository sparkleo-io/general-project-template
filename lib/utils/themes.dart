/*
you need to add this to your pubspec.yaml under dependency section
    get: ^4.6.1
    get_storage: ^2.0.3

put the theme file under the utils section then and you need to initilize the get storage in the main.dart file

example:
    void main() async {
      await GetStorage.init(); // initializing getStorage
      runApp(const MyApp());
    }

then you need to add this 3 line of code in the material app function 
      theme: Themes.light,
      darkTheme: Themes.dark,
      themeMode: Themes().theme,

if you need to use any condition due to light and dark mode you can use
use exmaple:
 backgroundColor: Get.isDarkMode
          ? Theme.of(context).scaffoldBackgroundColor
          : Theme.of(context).scaffoldBackgroundColor,

and all the colors you need to add from customColor.dart file.
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'app_colors.dart';

class Themes {
  final _box = GetStorage();
  final _key = 'isDarkMode';

  _saveThemeToBox(bool isDarkMode) => _box.write(_key, isDarkMode);

  bool _loadThemeFromBox() => _box.read(_key) ?? false;


  ThemeMode get theme => _loadThemeFromBox() ? ThemeMode.dark : ThemeMode.light;

  void switchTheme() {
    Get.changeThemeMode(_loadThemeFromBox() ? ThemeMode.light : ThemeMode.dark);
    _saveThemeToBox(!_loadThemeFromBox());
  }

  static final light = ThemeData.light().copyWith(
    primaryColor: AppColor.blackColor,
    scaffoldBackgroundColor: AppColor.whiteColor, // Use a light background color
    colorScheme: const ColorScheme.light(
      primary: AppColor.blackColor,
      secondary: AppColor.blackColor,
      surface: AppColor.whiteColor, // Example for card backgrounds
      onSurface: Colors.black, // Text color for surfaces
    ),
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(
      color: AppColor.blackColor,
      iconTheme: IconThemeData(
        color: AppColor.blackColor,
      ),
    ),
    textTheme: ThemeData.light().textTheme.apply(
      bodyColor: Colors.black, // Default body text color
      displayColor: Colors.black, // Default display text color
    ),
  );


  static final dark = ThemeData.dark().copyWith(
    primaryColor: AppColor.whiteColor,
    scaffoldBackgroundColor: AppColor.blackColor,
    // cardColor: CustomColor.accentColor,
    colorScheme: const ColorScheme.dark(
      primary: AppColor.whiteColor,
      secondary: AppColor.whiteColor,
      surface: AppColor.blackColor, // Example for card backgrounds
      onSurface: Colors.white, // Text color for surfaces
    ),

    brightness: Brightness.dark,
    appBarTheme: const AppBarTheme(
        color: AppColor.blackColor,
        iconTheme: IconThemeData(
            color: AppColor.whiteColor
        )
    ),
    textTheme: ThemeData.dark().textTheme.apply(
      bodyColor: Colors.white, // Default body text color
      displayColor: Colors.white, // Default display text color
        ),
  );
}
