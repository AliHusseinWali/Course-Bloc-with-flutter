import 'package:bloc_course/barrel_file.dart';


class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState(0));

  increment() {
    emit(CounterState(state.counter + 1));
  }

  decrement() {
    emit(CounterState(state.counter - 1));
  }

}

