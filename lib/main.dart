import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'bloc_observer.dart';
import 'counter_screen.dart';

void main() {
  BlocOverrides.runZoned(
    () => runApp(
      MyApp(),
    ),
    blocObserver: MyBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterScreen(),
    );
  }
}
