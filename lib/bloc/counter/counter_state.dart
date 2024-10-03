import 'package:equatable/equatable.dart';

class CounterState extends Equatable {
  const CounterState({this.counter = 0});
  final int counter;

  CounterState copyWith({int? counter}) {
    return CounterState(counter: counter ?? this.counter);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [counter];
}
