import 'package:bloc_course/barrel_file.dart';

class ExampleOne extends StatelessWidget {
  const ExampleOne({super.key});

  @override
  Widget build(BuildContext context) {
    print("----------Build----------");
    return BlocProvider(
      create: (context) => CounterCubitEx1(),
      child: BaseExampleScaffold(
        title: 'Example 1',
        description: """
Counter Cubit
- increment and decrement counter
- text counter""",

        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.6,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AddButtonEx1(),
                  SizedBox(height: 20),
                  BlocBuilder<CounterCubitEx1, CounterStateEx1>(
                    builder: (context, state) {
                      print("--------------------------------");
                      print("--------------Emit--------------");
                      print("--------------------------------");
                      return TextCounterEx1(counter: state.counter);
                    },
                  ),
                  SizedBox(height: 20),
                  RemoveButtonEx1(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
