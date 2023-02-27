import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../business_logic/home_bloc/color_cubit.dart';
import '../business_logic/home_bloc/color_state.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ColorCubit, ColorState>(
        listener: (context, state) {},
        builder: (context, state) {
          final colorCubit = ColorCubit.get(context);
          return Scaffold(
            backgroundColor: Color.fromRGBO(
                colorCubit.rColor, colorCubit.gColor, colorCubit.bColor, 1),
            body: const Center(child: Text("hey there")),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                colorCubit.selectRandomColor();
              },
              backgroundColor: Colors.blueAccent,
              child: const Icon(Icons.add),
            ),
          );
        });
  }
}
