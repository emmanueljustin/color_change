// ignore_for_file: lines_longer_than_80_chars

import 'dart:async';
import "dart:math";

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'color_change_event.dart';
part 'color_change_state.dart';

/// [ColorChangeBloc] is the main class of Bloc state
class ColorChangeBloc extends Bloc<ColorChangeEvent, ColorChangeState> {

  /// Contructor for bloc class
  ColorChangeBloc() : super(ColorChangeInitial()) {
    on<ColorChangeStarted>(_colorChangeStarted);
    on<UpdateColor>(_onUpdateColor);
  }

  FutureOr<void> _colorChangeStarted(ColorChangeStarted event, Emitter<ColorChangeState> emit) async {
    emit(state.copyWith(hexCode: event.defaultHexColor));
  }

  FutureOr<void> _onUpdateColor(UpdateColor _, Emitter<ColorChangeState> emit) async {

    const String hexKey = 'ABCDEF1234567890';

    final Random rand = Random();

    final test = List.generate(6, (index)
      => hexKey[rand.nextInt(hexKey.length)],).join();
    emit(state.copyWith(hexCode: int.parse('0xFF$test')));
  }
}
