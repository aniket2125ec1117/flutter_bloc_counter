import 'package:bloc/bloc.dart';
import 'package:first_block/bloc/counter/counter_events.dart';
import 'package:first_block/bloc/counter/counter_state.dart';

class CounterBloc extends Bloc<CounterEvents, CounterState> {
  CounterBloc() : super(const CounterState()) {
    on<IncrementCounter>(_increment);
    on<DecrementCounter>(_decrement);
  }

  void _increment(IncrementCounter event, Emitter<CounterState> emit) {
    emit(state.copyWith(counter: state.counter + 1));
  }

  void _decrement(DecrementCounter events, Emitter<CounterState> emit) {
    emit(state.copyWith(counter: state.counter - 1));
  }
}
