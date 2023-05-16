import 'package:color_app/color_change_bloc/color_change_bloc.dart';
import 'package:color_app/color_change_cubit/color_change_cubit.dart';
import 'package:color_app/screens/pageview_screen/bloc_page_view.dart';
import 'package:color_app/screens/pageview_screen/cubit_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// [Home] Serves as the homepage of the application
class Home extends StatelessWidget {
  
  /// Defualt hex color value
  final int defaultHexColor = 0xFFFFFFFF;

  /// Controller for page view widget
  final PageController controller = PageController();

  /// Homepage constructor
  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ColorChangeCubit>(
          create: (context) => ColorChangeCubit(),
        ),
        BlocProvider<ColorChangeBloc>(
          create: (context) => 
            ColorChangeBloc()..add(ColorChangeStarted(defaultHexColor)),
        ),
      ],
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: PageView(
            controller: controller,
            children: const [
              BlocPageView(),
              CubitPageView()
            ],
          ),
        ),
      ),
    );
  }
}
