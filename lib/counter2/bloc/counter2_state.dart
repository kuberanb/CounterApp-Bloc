part of 'counter2_bloc.dart';

@freezed
class Counter2State with _$Counter2State {
  const factory Counter2State({
    required int count,
  }) = _Counter2State;

  factory Counter2State.initial() => const Counter2State(count: 0);
}
