import 'package:bloc_course/barrel_file.dart';

class ExampleOne extends StatelessWidget {
  const ExampleOne({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: BaseExampleScaffold(
        title: 'Example 1',
        description: """Counter Cubit""",
        
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AddButton(),
              BlocBuilder<CounterCubit, CounterState>(
                builder: (context, state) {
                  return TextCunter(counter: state.counter);
                },
              ),

              SizedBox(height: 20),
              RemoveButton(),
            ],
          ),
        ],
      ),
    );
  }
}

