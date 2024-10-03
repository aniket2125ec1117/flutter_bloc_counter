import 'package:first_block/bloc/counter/counter_bloc.dart';
import 'package:first_block/ui/counter_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  return runApp(const Bloc());
}

class Bloc extends StatelessWidget {
  const Bloc({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (ctx) => CounterBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Bloc_practice',
        home: CounterScreen(),
      ),
    );
  }
}
