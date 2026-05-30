import 'package:bloc_course/barrel_file.dart';

class ExampleTwo extends StatelessWidget {
  const ExampleTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubitExampleTwo(),
      child: BaseExampleScaffold(
        title: 'Example 2',
        description: """Counter Cubit""",

        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.6,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AddButton(),
                  SizedBox(height: 20),
                  BlocBuilder<CounterCubitExampleTwo, CounterState>(
                    builder: (context, state) {
                      if (state is IncrementCounter) {
                        return TextCounter(counter: state.counter, color: Colors.green);
                      } else if (state is DecrementCounter) {
                        return TextCounter(counter: state.counter, color: Colors.red);
                      } else {
                        return TextCounter(counter: state.counter, color: Colors.black);
                      }
                    },
                  ),
                  SizedBox(height: 20),
                  RemoveButton(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
