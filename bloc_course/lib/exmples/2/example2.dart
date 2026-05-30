import 'package:bloc_course/barrel_file.dart';

class ExampleTwo extends StatelessWidget {
  const ExampleTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubitExampleTwo(),
      child: BaseExampleScaffold(
        title: 'Example 2',
        description: """
Counter Cubit
change text color when increment and decrement
- green when increment
- red when decrement
- black when no change""",

        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.6,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AddButtonExampleTwo(),
                  SizedBox(height: 20),
                  BlocBuilder<CounterCubitExampleTwo, CounterState>(
                    builder: (context, state) {
                      if (state is IncrementCounter) {
                        return TextCounterExampleTwo(counter: state.counter, color: Colors.green);
                      } else if (state is DecrementCounter) {
                        return TextCounterExampleTwo(counter: state.counter, color: Colors.red);
                      } else {
                        return TextCounterExampleTwo(counter: state.counter, color: Colors.black);
                      }
                    },
                  ),
                  SizedBox(height: 20),
                  RemoveButtonExampleTwo(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
