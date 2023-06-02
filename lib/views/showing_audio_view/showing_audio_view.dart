import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hasl_kheer/views/home_view/home_view.dart';

import '../../blocs/app_cubit/app_cubit.dart';
import '../result_screen/result_screen.dart';


class ShowingSelectedAudioScreen extends StatefulWidget {
  final bool isFromPicker;
  const ShowingSelectedAudioScreen({Key? key , required this.isFromPicker}) : super(key: key);

  @override
  State<ShowingSelectedAudioScreen> createState() =>
      _ShowingSelectedAudioScreenState();
}

class _ShowingSelectedAudioScreenState
    extends State<ShowingSelectedAudioScreen> {
  Color bgColor = const Color(0xff282727);
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {
        if (state is UploadAudioSuccessfully) {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (_) => ResultScreen(url: state.url),
              ),
                  (route) => false);
        }
      },
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return Scaffold(
          backgroundColor: bgColor,
          body: SafeArea(
            child: Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
              child: state is UploadAudioLoading ? Center(
                child: CircularProgressIndicator(
                  color: Colors.red.shade900,
                ),
              ):Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AudioFileWaveforms(
                    size: Size(MediaQuery.of(context).size.width,
                        MediaQuery.of(context).size.height / 1.5),
                    playerController: cubit.playerController,
                    playerWaveStyle: PlayerWaveStyle(
                      scaleFactor: 120,
                      seekLineColor: Colors.red.shade900,
                      seekLineThickness: 1.0,
                      fixedWaveColor: Colors.white30,
                      liveWaveColor: Colors.white,
                      waveCap: StrokeCap.butt,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    padding: const EdgeInsets.only(left: 18),
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 3,
                        child: ElevatedButton(
                          onPressed: () {
                            //cubit.uploadAudio(isFromPicker: widget.isFromPicker);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red.shade900,
                            //padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                            textStyle: GoogleFonts.lato(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          child: const Text(
                            'Send for predictions',
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: IconButton(
                          onPressed: () {
                            cubit.playAndPauseControl();
                          },
                          icon: Icon(
                            cubit.playerController.playerState.isPlaying
                                ? Icons.pause
                                : Icons.play_arrow,
                            color: Colors.white,
                            size: 20.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (_) =>  HomeView()),
                            (route) => false,
                      );
                      cubit.playerController.dispose();
                      cubit.noSeconds = 0;
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red.shade900,
                      textStyle: GoogleFonts.lato(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    child: const Text(
                      'Back Home',
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    AppCubit.get(context).playerController.dispose();
  }
}
