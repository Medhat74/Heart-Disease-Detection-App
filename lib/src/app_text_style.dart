import 'package:flutter/material.dart';

import 'app_color.dart';


class AppTextStyle {
  static TextStyle headLine() => const TextStyle(
    fontSize: 23.0,
    fontWeight: FontWeight.w800,
    fontFamily: "Nunito",
    color:  AppColors.logoColor
  );

  static TextStyle appBarText() =>const TextStyle(
    color: AppColors.kPrimaryColor,
    fontSize: 24.0,
    fontWeight: FontWeight.normal,
    fontFamily: "Nunito",
  );

  static TextStyle appLogInRegisterTitle() =>const TextStyle(
    color: AppColors.kPrimaryColor,
    fontSize: 24.0,
    fontWeight: FontWeight.normal,
    fontFamily: "Nunito",
  );

  static TextStyle bodyText() => const TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.normal,
    fontFamily: "Nunito",
  );
  static TextStyle subTitle() =>const TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w800,
    height: 1.3,
    fontFamily: "Nunito",
  );
  static TextStyle caption() =>const TextStyle(
    fontSize: 13.0,
    fontFamily: "Nunito",
  );
  static TextStyle offerTitle() =>const TextStyle(
    fontSize: 13.0,
    fontFamily: "Nunito",
    color: Colors.white
  );
  static TextStyle bottomBar() =>const TextStyle(
    fontSize: 12.0,
    fontFamily: "Nunito",
  );
  static TextStyle title() =>const TextStyle(
    fontSize: 18.0,
    fontFamily: "Nunito",
    fontWeight: FontWeight.w800,
    color: AppColors.logoColor

  );
  static TextStyle productTitle() =>const TextStyle(
    fontSize: 13.0,
    fontFamily: "Nunito",
    color: AppColors.kPrimaryColor,
    fontWeight: FontWeight.bold,
  );
  static TextStyle productPrice({required Color color}) =>TextStyle(
    fontSize: 14.0,
    fontFamily: "Nunito",
    fontWeight: FontWeight.bold,
    color: color,
  );
  static TextStyle offerPrice() =>const TextStyle(
    fontSize: 8.0,
    fontFamily: "Nunito",
    color: Colors.blueGrey,
    fontWeight: FontWeight.normal,
    decoration: TextDecoration.lineThrough
  );
  static TextStyle offerPerText() =>const TextStyle(
    fontSize: 12.5,
    fontFamily: "Nunito",
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );
  static TextStyle tagText() =>const TextStyle(
    fontSize: 10.0,
    fontFamily: "Nunito",
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  static TextStyle tagTextBlack() =>const TextStyle(
    fontSize: 12.0,
    fontFamily: "Nunito",
    color: Colors.black,
    fontWeight: FontWeight.bold,
  );
  static TextStyle tagTextWhite() =>const TextStyle(
    fontSize: 12.0,
    fontFamily: "Nunito",
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );
  static TextStyle subTagText() =>const TextStyle(
    fontSize: 10.0,
    fontFamily: "Nunito",
    color: Colors.black,
  );
  static TextStyle subTagTextWhite() =>const TextStyle(
    fontSize: 10.0,
    fontFamily: "Nunito",
    color: Colors.white,
  );

  static TextStyle textButtonStyle()=>const TextStyle(
    fontSize: 14.0,
    fontFamily: "Nunito",
    color: AppColors.kPrimaryColor,
    fontWeight: FontWeight.bold
  );

  static TextStyle appButtonStyle() =>const TextStyle(
    color: Colors.white,
    fontSize: 18.0,
    fontWeight: FontWeight.normal,
    fontFamily: "Nunito",
  );

  static TextStyle serverErrorText() => const TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.normal,
    fontFamily: "Nunito",
  );
}