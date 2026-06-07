import 'package:bloc_course/barrel_file.dart';

class CustomCounter extends StatelessWidget {
  final String title;
  final double heightFactor;
  final int counter;
  final void Function()? incrementonPressed;
  final void Function()? decrementonPressed;

  const CustomCounter({super.key, required this.title, this.heightFactor = 0.2, required this.counter, this.incrementonPressed, this.decrementonPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * heightFactor,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Top Row: Controls and Value
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonCounterEx3(onPressed: incrementonPressed, icon: Icons.add),
                const SizedBox(width: 20),
                BlocBuilder<CounterCubitEx3, CounterStateEx3>(
                  builder: (context, state) {
                    if (state is IncrementCounterEx3) {
                      return TextCounterEx3(counter: counter, color: Colors.green);
                    } else if (state is DecrementCounterEx3) {
                      return TextCounterEx3(counter: counter, color: Colors.red);
                    } else {
                      return TextCounterEx3(counter: counter, color: Colors.black);
                    }
                  },
                ),
                const SizedBox(width: 20),
                ButtonCounterEx3(onPressed: decrementonPressed, icon: Icons.remove),
              ],
            ),
            const SizedBox(height: 10), // Vertical spacing between controls and label
            // Bottom Row: Centered Label
            Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
