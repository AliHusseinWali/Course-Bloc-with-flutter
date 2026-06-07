import 'package:bloc_course/barrel_file.dart';

class ExampleTwo extends StatelessWidget {
  const ExampleTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubitEx2(),
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
                  AddButtonEx2(),
                  SizedBox(height: 20),
                  BlocBuilder<CounterCubitEx2, CounterStateEx2>(
                    builder: (context, state) {
                      if (state is IncrementCounterEx2) {
                        return TextCounterEx2(counter: state.counter, color: Colors.green);
                      } else if (state is DecrementCounterEx2) {
                        return TextCounterEx2(counter: state.counter, color: Colors.red);
                      } else {
                        return TextCounterEx2(counter: state.counter, color: Colors.black);
                      }
                    },
                  ),
                  SizedBox(height: 20),
                  RemoveButtonEx2(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
