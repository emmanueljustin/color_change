part of 'color_change_bloc.dart';

/// [ColorChangeState] main class for the state part of the bloc
class ColorChangeState extends Equatable {

  /// hexCode state
  final int hexCode;

  @override
  List<Object?> get props => [
    hexCode
  ];

  /// Constructor of Bloc state
  const ColorChangeState({
    this.hexCode = 0,
  });
  
  /// Copy with used to make sure that if the current emitted state is null it
  /// would show it's previous value to avoid null error
  ColorChangeState copyWith ({
    int? hexCode,
  }) => ColorChangeState(
    hexCode: hexCode ?? this.hexCode,
  );
}

/// The initial class of the Bloc state
class ColorChangeInitial extends ColorChangeState {}
