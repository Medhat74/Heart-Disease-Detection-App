import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hasl_kheer/views/home_view/home_view.dart';

import '../../blocs/app_cubit/app_cubit.dart';
import '../../core/utils/naviagtion.dart';
import '../../core/utils/size_config.dart';
import '../../src/app_const.dart';





class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(

      body: Center(
        child: Image.asset(
          'assets/images/Logo.jpg',
        ),
      ),

    );
  }

  startTime() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, route);
  }

  route() {
    AppCubit.get(context).loadModel(MODEL_PATH);
    AppCubit.get(context).loadFile(SIGNAL_PATH);
    AppNavigator.customNavigator(context: context, screen:  HomeView(), finish: true);

  }


}
