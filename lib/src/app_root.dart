import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hasl_kheer/blocs/app_cubit/app_cubit.dart';
import 'package:hasl_kheer/src/app_color.dart';

import '../views/home_view/home_view.dart';
import '../views/splash_view/splash_view.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => AppCubit(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(brightness:  Brightness.dark,
        primaryColor: AppColors.kPrimaryColor,
        ),
        debugShowCheckedModeBanner: false,
        home: const SplashView(),
      ),
    );
  }
}
