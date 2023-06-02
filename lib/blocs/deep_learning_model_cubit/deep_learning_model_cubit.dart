import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'deep_learning_model_state.dart';

class DeepLearningModelCubit extends Cubit<DeepLearningModelState> {
  DeepLearningModelCubit() : super(DeepLearningModelInitial());
}
