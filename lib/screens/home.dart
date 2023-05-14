import 'package:color_app/color_change_bloc/color_change_bloc.dart';
import 'package:color_app/color_change_cubit/color_change_cubit.dart';
import 'package:color_app/screens/pageview_screen/bloc_page_view.dart';
import 'package:color_app/screens/pageview_screen/cubit_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Serves as the homepage of the application
class Home extends StatelessWidget {
  
  int defaultHexColor = 0xFFFFFFFF;

  // Homepage constructor
  Home({Key? key}) : super(key: key);

  // Controller for page view widget
  final PageController controller = PageController();

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
    // return BlocProvider<ColorChangeBloc>(
    //   create: (context) =>
    //     ColorChangeBloc()..add(ColorChangeStarted(defaultHexColor)),
    //   child: BlocBuilder<ColorChangeBloc, ColorChangeState>(
    //     builder: (context, state) {

    //       return GestureDetector(
    //         onTap: () => context.read<ColorChangeBloc>().add(UpdateColor()),
    //         child: Scaffold(
    //           backgroundColor: Color(state.hexCode),
    //           body: SafeArea(
    //             child: Center(
    //               child: Column(
    //                 mainAxisAlignment: MainAxisAlignment.center,
    //                 children: [
    //                   const Text('Hello There.'),
    //                 ],
    //               ),
    //             ),
    //           ),
    //         ),
    //       );
    //     },
    //   ),
    // );
  }
}
