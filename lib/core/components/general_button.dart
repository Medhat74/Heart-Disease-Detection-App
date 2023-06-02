import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../src/app_color.dart';

class GeneralButton extends StatelessWidget {
  final String text;
  final function;

  GeneralButton(this.text ,this.function);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: function,
      style: ElevatedButton.styleFrom(
        primary: AppColors.kPrimaryColor, // Background color
      ),
      child:Text (text,),
    );
  }
}
