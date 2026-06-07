import 'package:bloc_course/barrel_file.dart';

const int counterA = 0;
const int counterB = 0;
const int counterC = 0;

class ExampleThree extends StatelessWidget {
  const ExampleThree({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubitEx3(),
      child: BaseExampleScaffold(
        title: 'Example 3',
        description: """
Three Counter Cubit
change value's color of counter when increment and decrement
- green when increment
- red when decrement
- black when no change""",
        children: [
          Column(
            children: [
              BlocProvider(
                create: (context) => CounterCubitEx3(),
                child: CustomCounter(
                  title: "Counter A",
                  counter: counterA,
                  incrementonPressed: () {
                    context.read<CounterCubitEx3>().incrementA();
                  },
                  decrementonPressed: () {
                    context.read<CounterCubitEx3>().decrementA();
                  },
                ),
              ),
              BlocProvider(
                create: (context) => CounterCubitEx3(),
                child: CustomCounter(
                  title: "Counter B",
                  counter: counterB,
                  incrementonPressed: () {
                    context.read<CounterCubitEx3>().incrementB();
                  },
                  decrementonPressed: () {
                    context.read<CounterCubitEx3>().decrementB();
                  },
                ),
              ),
              BlocProvider(
                create: (context) => CounterCubitEx3(),
                child: CustomCounter(
                  title: "Counter C",
                  counter: counterC,
                  incrementonPressed: () {
                    context.read<CounterCubitEx3>().incrementC();
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
