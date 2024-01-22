import 'package:base_project/global_utils/colours.dart';
import 'package:flutter/material.dart';

class Themes {
  static final light = ThemeData.light().copyWith(
    appBarTheme: const AppBarTheme(backgroundColor: Colours.darkButton, foregroundColor: Colours.selectedLight),
    filledButtonTheme: FilledButtonThemeData(
        style: TextButton.styleFrom(backgroundColor: Colours.darkButton, foregroundColor: Colours.selectedLight)),
    switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.all(Colours.darkButton),
        trackColor: MaterialStateProperty.all(Colours.unselectedDark)),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Colours.darkButton,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colours.selectedLight,
        unselectedItemColor: Colours.unselectedLight),
    radioTheme: RadioThemeData(fillColor: MaterialStateProperty.all(Colours.darkButton)),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Colours.darkButton, foregroundColor: Colours.selectedLight),
  );
  static final dark = ThemeData.dark().copyWith(
    appBarTheme: const AppBarTheme(backgroundColor: Colours.lightButton, foregroundColor: Colours.selectedDark),
    filledButtonTheme: FilledButtonThemeData(
        style: TextButton.styleFrom(backgroundColor: Colours.lightButton, foregroundColor: Colours.selectedDark)),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Colours.lightButton,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colours.selectedDark,
        unselectedItemColor: Colours.unselectedDark),
    radioTheme: RadioThemeData(fillColor: MaterialStateProperty.all(Colours.lightButton)),
    switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.all(Colours.lightButton),
        trackColor: MaterialStateProperty.all(Colours.unselectedLight)),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Colours.lightButton, foregroundColor: Colours.selectedDark),
  );
}
