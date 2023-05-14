part of 'color_change_bloc.dart';


// The abstract class for Bloc event
abstract class ColorChangeEvent extends Equatable {

  // Class constructor
  const ColorChangeEvent();

  // Override is used to make sure the variable doesn't get instantiated again
  @override
  List<Object?> get props => [];
}

// Event class or the initial state of this bloc
class ColorChangeStarted extends ColorChangeEvent {

  // Variable used to store the initial data  or value of the color
  final int defaultHexColor;

  // Constructor for the initial state of the Bloc
  const ColorChangeStarted(this.defaultHexColor);

  // int Variable was inserted into equatable to make sure it doesn't have
  // multiple instance
  @override
  List<Object?> get props => [defaultHexColor];
}

// Event where the user taps the screen to update the color
class UpdateColor extends ColorChangeEvent {
  @override
  List<Object?> get props => [];
}