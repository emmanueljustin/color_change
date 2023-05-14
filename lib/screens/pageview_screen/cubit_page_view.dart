import 'package:color_app/color_change_cubit/color_change_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Color change in this page is managed by cubit state
class CubitPageView extends StatelessWidget {

  // Cubit page constructor
  const CubitPageView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final hexColor = context.watch<ColorChangeCubit>().state;

    return GestureDetector(
      onTap: () => context.read<ColorChangeCubit>().generateColor(),
      child: Container(
        color: Color(int.parse(hexColor)),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Hello There.'),
            Text('This page uses cubit state management'),
            Text('<<<< Swipe left',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}