part of 'color_change_bloc.dart';


/// [ColorChangeEvent] is the abstract class for Bloc event
abstract class ColorChangeEvent extends Equatable {

  @override
  List<Object?> get props => [];

  /// Class constructor
  const ColorChangeEvent();
}

/// [ColorChangeStarted] is the event class or the initial state of this bloc
class ColorChangeStarted extends ColorChangeEvent {

  /// Variable used to store the initial data  or value of the color
  final int defaultHexColor;

  @override
  List<Object?> get props => [defaultHexColor];

  /// Constructor for the initial state of the Bloc
  const ColorChangeStarted(this.defaultHexColor);
}

/// [UpdateColor] is the event where the user taps the screen to update the color
class UpdateColor extends ColorChangeEvent {
  @override
  List<Object?> get props => [];
}