part of 'counter2_bloc.dart';

@freezed
class Counter2Event with _$Counter2Event {

  const factory Counter2Event.increment() = Increment;
  const factory Counter2Event.decrement() = Decrement;

}

