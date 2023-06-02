import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hasl_kheer/core/utils/naviagtion.dart';
import 'package:hasl_kheer/core/utils/size_config.dart';
import 'package:hasl_kheer/src/app_color.dart';
import 'package:hasl_kheer/views/showing_audio_view/showing_audio_view.dart';

import '../../blocs/app_cubit/app_cubit.dart';
import '../record_audio_screen/recording_audio_screen.dart';

class HomeView extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("5 Pulse Checker"),
        ),
      ),
      body: BlocConsumer<AppCubit, AppState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Center(
            child: SizedBox(
              height: SizeConfig.screenHeight! * 0.5,
              width: SizeConfig.screenWidth! * 0.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage("assets/images/Logo.jpg",),
                    backgroundColor: AppColors.kPrimaryColor,
                    radius: 60.0,
                  ),
                  Text("Choose"),
                  SizedBox(
                    height: 40,
                    width: 150,
                    child: ElevatedButton(
                      onPressed: () {
                        AppNavigator.customNavigator(context: context, screen: RecordingAudioScreen(), finish: false);
                      },
                      // style: ButtonStyle(elevation: MaterialStateProperty(12.0 )),
                      style: ElevatedButton.styleFrom(
                          elevation: 12.0,
                          backgroundColor: AppColors.kPrimaryColor),
                      //textStyle: const TextStyle(color: AppColors.kPrimaryColor)),
                      child: const Text('Record audio'),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    width: 150,
                    child: ElevatedButton(
                      onPressed: () {
                        AppCubit.get(context).getFileFromFolders();
                        AppNavigator.customNavigator(context: context, screen: ShowingSelectedAudioScreen(isFromPicker: true), finish: false);
                      },
                      // style: ButtonStyle(elevation: MaterialStateProperty(12.0 )),
                      style: ElevatedButton.styleFrom(
                          elevation: 12.0,
                          backgroundColor: AppColors.kPrimaryColor),
                      //textStyle: const TextStyle(color: AppColors.kPrimaryColor)),
                      child: const Text('Select form device'),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
