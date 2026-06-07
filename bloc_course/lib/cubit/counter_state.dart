class CounterStateEx1 {
  final int counter;
  CounterStateEx1(this.counter);
}

class IncrementCounterEx1 extends CounterStateEx1 {
  IncrementCounterEx1(super.counter);
}

class DecrementCounterEx1 extends CounterStateEx1 {
  DecrementCounterEx1(super.counter);
}


// ----------------------------------------------------


class CounterStateEx2 {
  final int counter;
  CounterStateEx2(this.counter);
}

class IncrementCounterEx2 extends CounterStateEx2 {
  IncrementCounterEx2(super.counter);
}

class DecrementCounterEx2 extends CounterStateEx2 {
  DecrementCounterEx2(super.counter);
}


// ----------------------------------------------------


class CounterStateEx3 {
  final int counterA;
  final int counterB;
  final int counterC;
  CounterStateEx3(this.counterA, this.counterB, this.counterC);
}

class IncrementCounterEx3 extends CounterStateEx3 {
  IncrementCounterEx3(super.counterA, super.counterB, super.counterC);
}

class DecrementCounterEx3 extends CounterStateEx3 {
  DecrementCounterEx3(super.counterA, super.counterB, super.counterC);
}
