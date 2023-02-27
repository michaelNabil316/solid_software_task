import 'dart:math';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../shared/constants.dart';
import 'color_state.dart';

class ColorCubit extends Cubit<ColorState> {
  ColorCubit() : super(AppInitialState());
  static ColorCubit get(context) => BlocProvider.of(context);
  var random = Random();
  int rColor = 0;
  int gColor = 0;
  int bColor = 0;

  selectRandomColor() {
    rColor = random.nextInt(maxColorRange);
    gColor = random.nextInt(maxColorRange);
    bColor = random.nextInt(maxColorRange);
    emit(RandomState());
  }
}
