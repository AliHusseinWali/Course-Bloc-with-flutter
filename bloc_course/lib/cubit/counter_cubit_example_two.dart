import 'package:bloc_course/barrel_file.dart';

class CounterCubitExampleTwo extends Cubit<CounterState> {
  CounterCubitExampleTwo() : super(CounterState(0));

  increment() {
    emit(IncrementCounter(state.counter + 1));
  }

  decrement() {
    emit(DecrementCounter(state.counter - 1));
  }
}
