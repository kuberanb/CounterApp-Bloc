import 'package:bloc/bloc.dart';
import 'package:bloctest/counter/counter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter2_event.dart';
part 'counter2_state.dart';
part 'counter2_bloc.freezed.dart';

class Counter2Bloc extends Bloc<Counter2Event, Counter2State> {
  Counter2Bloc() : super(Counter2State.initial()) {
    on<Increment>((event, emit) {
      return emit(state.copyWith(count: state.count + 1));
    });

    on<Decrement>((event, emit) {
      final newState = state.copyWith(count: state.count - 1);
      return emit(newState);
    });
  }
}
