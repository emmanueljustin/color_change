part of 'color_change_bloc.dart';

class ColorChangeState extends Equatable {

  final int hexCode;

  // Constructor of Bloc state
  const ColorChangeState({
    this.hexCode = 0,
  });
  
  // Copy with used to make sure that if the current emitted state is null it
  // would show it's previous value to avoid null error
  ColorChangeState copyWith ({
    int? hexCode,
  }) => ColorChangeState(
    hexCode: hexCode ?? this.hexCode
  );

  // All of the state that is listed and will be added needs to be inserted
  // in equatable to make sure there are no duplicate instances of the same obj
  @override
  List<Object?> get props => [
    hexCode
  ];
}

// The initial class of the Bloc state
class ColorChangeInitial extends ColorChangeState {}
