import 'package:bloc_course/barrel_file.dart';

class CounterCubitExampleOne extends Cubit<CounterState> {
  CounterCubitExampleOne() : super(CounterState(0));

  increment() {
    emit(CounterState(state.counter + 1));
  }

  decrement() {
    emit(CounterState(state.counter - 1));
  }
}
