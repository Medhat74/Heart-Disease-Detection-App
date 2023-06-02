import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../src/app_color.dart';

class TextFormFieldComp extends StatefulWidget {
  final String hint;
  final icon;
  final textInputType;
  final bool isPassword;
  var prevValue;
  var textController = TextEditingController();
  var validateFunction;
  var onChangeFunction;
  var suffixIcon;
  bool enabled;
  bool isInAddressScreen;
  TextFormFieldComp(
      {required this.hint,
        this.icon,
      required this.textController,
      required this.isPassword,
      String? this.prevValue,
      required this.textInputType,
      required this.validateFunction,
      required this.onChangeFunction,
        this.suffixIcon,
        this.isInAddressScreen = false,
        this.enabled = true,
      });

  @override
  State<TextFormFieldComp> createState() => _TextFormFieldCompState();
}

class _TextFormFieldCompState extends State<TextFormFieldComp> {
  @override
  Widget build(BuildContext context) {
    return widget.isInAddressScreen ? TextFormField(
      controller: widget.textController,
      keyboardType: widget.textInputType,
      cursorColor: AppColors.kPrimaryColor,
      enabled: widget.enabled,
      obscureText: widget.isPassword,
      decoration: InputDecoration(
        hintText: widget.hint,
        hintStyle:  const TextStyle(color: Colors.grey, fontSize: 17),
        prefixIcon: widget.icon!= null ? Icon(widget.icon , color: Colors.grey):const SizedBox(),
        border: const OutlineInputBorder(),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.kPrimaryColor),
        ),
        prefixIconConstraints:const BoxConstraints(
            minWidth: 10.0,
            maxWidth: 10.0,
            maxHeight: 14.0,
        ),

        suffixIcon: widget.suffixIcon ?? const SizedBox(),
        //suffixIcon:
      ),
      validator: widget.validateFunction,
      onChanged: widget.onChangeFunction,
    ):TextFormField(
      controller: widget.textController,
      keyboardType: widget.textInputType,
      cursorColor: AppColors.kPrimaryColor,
      enabled: true,
      obscureText: widget.isPassword,
      decoration: InputDecoration(
        hintText: widget.hint,
        hintStyle:  const TextStyle(color: Colors.grey, fontSize: 17),
        prefixIcon: widget.icon!= null ? Icon(widget.icon , color: Colors.grey):const SizedBox(),
        border: const OutlineInputBorder(),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.kPrimaryColor),
        ),
        suffixIcon: widget.suffixIcon ?? const SizedBox(),
        //suffixIcon:
      ),
      validator: widget.validateFunction,
      onChanged: widget.onChangeFunction,
    )
    ;
  }
}
