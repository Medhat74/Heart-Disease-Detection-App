import '../../src/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_color.dart';
import 'app_swatch.dart';

final lightTheme = ThemeData(
  primarySwatch: Palette.kPrimarySwatch,
  primaryColor: AppColors.kPrimaryColor,
  backgroundColor: AppColors.bgLightTheme,
  scaffoldBackgroundColor: AppColors.bgLightTheme,
  brightness: Brightness.light,
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: AppColors.bgLightTheme,
    unselectedIconTheme: IconThemeData(
      color: AppColors.logoColor,
    ),
  ),
  appBarTheme: AppBarTheme(
      backgroundColor: AppColors.bgLightTheme,
      titleTextStyle: AppTextStyle.title(),
      elevation: 0.0,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
      ),
      iconTheme: const IconThemeData(
        color: AppColors.logoColor,
      ),
  ),
  iconTheme: const IconThemeData(
    color: AppColors.logoColor,
  ),
);

final darkTheme = ThemeData(
  primarySwatch: Palette.kPrimarySwatch,
  primaryColor: AppColors.kPrimaryColor,
  backgroundColor: AppColors.bgDarkTheme,
  indicatorColor: AppColors.kPrimaryColor,
  scaffoldBackgroundColor: AppColors.bgDarkTheme,
  brightness: Brightness.dark,
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: AppColors.bgDarkTheme,
    unselectedIconTheme: IconThemeData(
      color: AppColors.logoColor,
    ),
  ),
  appBarTheme:  AppBarTheme(
      elevation: 0.0,
      backgroundColor: AppColors.bgDarkTheme,
    titleTextStyle: AppTextStyle.title(),
    systemOverlayStyle:const SystemUiOverlayStyle(
        statusBarColor: AppColors.bgDarkTheme,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.light,
      ),
    iconTheme:const IconThemeData(
      color: AppColors.logoColor,
    ),
  ),
  iconTheme: const IconThemeData(
    color: AppColors.logoColor,
  ),
);
