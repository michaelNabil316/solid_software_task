import 'package:color_gen_task/business_logic/home_bloc/color_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'presentation/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'color Gen',
        home: BlocProvider(
          create: (context) => ColorCubit()..selectRandomColor(),
          child: const MyHomePage(),
        ));
  }
}
