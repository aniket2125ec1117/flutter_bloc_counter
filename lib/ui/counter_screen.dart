import 'package:first_block/bloc/counter/counter_bloc.dart';
import 'package:first_block/bloc/counter/counter_events.dart';
import 'package:first_block/bloc/counter/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    print("Widget rebuild");
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Example"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // when ever a event is triggered then on blocBuilder widget will be rebuild
          BlocBuilder<CounterBloc, CounterState>(builder: (context, state) {
            print("bloc builder triggerd ");
            return Center(
              child: Text(
                state.counter.toString(),
                style: TextStyle(fontSize: 60),
              ),
            );
          }),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    print("Increment counter triggered");
                    context.read<CounterBloc>().add(IncrementCounter());
                  },
                  child: Text("Increment")),
              SizedBox(
                width: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    context.read<CounterBloc>().add(DecrementCounter());
                  },
                  child: Text("Decrement")),
            ],
          )
        ],
      ),
    );
  }
}
