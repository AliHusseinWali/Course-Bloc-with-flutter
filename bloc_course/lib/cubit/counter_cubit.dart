import 'package:bloc_course/barrel_file.dart';

class CounterCubitEx1 extends Cubit<CounterStateEx1> {
  CounterCubitEx1() : super(CounterStateEx1(0));

  increment() {
    emit(CounterStateEx1(state.counter + 1));
  }

  decrement() {
    emit(CounterStateEx1(state.counter - 1));
  }
}

// ----------------------------------------------------

class CounterCubitEx2 extends Cubit<CounterStateEx2> {
  CounterCubitEx2() : super(CounterStateEx2(0));

  increment() {
    emit(IncrementCounterEx2(state.counter + 1));
  }

  decrement() {
    emit(DecrementCounterEx2(state.counter - 1));
  }
}

// ----------------------------------------------------

class CounterCubitEx3 extends Cubit<CounterStateEx3> {
  CounterCubitEx3() : super(CounterStateEx3(0, 0, 0));

  incrementA() {
    emit(IncrementCounterEx3(state.counterA + 1, state.counterB, state.counterC));
  }

  decrementA() {
    emit(DecrementCounterEx3(state.counterA - 1, state.counterB, state.counterC));
  }

  incrementB() {
    emit(IncrementCounterEx3(state.counterB + 1, state.counterA, state.counterC));
  }

  decrementB() {
    emit(DecrementCounterEx3(state.counterB - 1, state.counterA, state.counterC));
  }

  incrementC() {
    emit(IncrementCounterEx3(state.counterC + 1, state.counterA, state.counterB));
  }

  decrementC() {
    emit(DecrementCounterEx3(state.counterC - 1, state.counterA, state.counterB));
  }
}
