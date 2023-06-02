import 'package:flutter/material.dart';

import '../../src/app_color.dart';

class GeneralText extends StatelessWidget {
  const GeneralText({Key? key, required this.txt, required this.fontSize}) : super(key: key);

  final String txt;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: TextStyle(  fontSize: fontSize),
    );
  }
}
