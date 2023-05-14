import 'package:color_app/color_change_bloc/color_change_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Bloc page view is where the color change state is being processed by bloc
class BlocPageView extends StatelessWidget {

  // Bloc page constructor
  const BlocPageView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final hexColor = context.watch<ColorChangeBloc>().state.hexCode;

    return GestureDetector(
      onTap: () => context.read<ColorChangeBloc>().add(UpdateColor()),
      child: Container(
        color: Color(hexColor),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Hello There.'),
            Text('This page uses bloc state management'),
            Text('Swipe right >>>>',
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