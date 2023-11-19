import 'package:bloc/bloc.dart';
import 'package:bloc_counter_app/home_screen.dart';
import 'package:flutter/material.dart';

import 'bloc_observar.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
