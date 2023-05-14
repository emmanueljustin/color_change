import "dart:math";

import 'package:bloc/bloc.dart';

// Color change cubit handles the state in which separates the
// logic and the design code inside the application
class ColorChangeCubit extends Cubit<String> {

  // Contructor of the Color Change Cubit
  ColorChangeCubit() : super('0xFFFFFFFF');
  

  // This function is the one being called to trigger the state in cubit
  // to change the color
  void generateColor() {

    const String hexKey = 'ABCDEF1234567890';

    final Random rand = Random();

    final test = List.generate(6, (index)
      => hexKey[rand.nextInt(hexKey.length)],).join();
    emit('0xFF$test');
  }
}