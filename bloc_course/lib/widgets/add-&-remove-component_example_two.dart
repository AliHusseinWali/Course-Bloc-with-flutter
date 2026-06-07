// ignore: file_names
import 'package:bloc_course/barrel_file.dart';

class AddButtonEx2 extends StatelessWidget {
  const AddButtonEx2({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        context.read<CounterCubitEx2>().increment();
      },
      icon: Icon(Icons.add, size: 40),
    );
  }
}

class RemoveButtonEx2 extends StatelessWidget {
  const RemoveButtonEx2({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        context.read<CounterCubitEx2>().decrement();
      },
      icon: Icon(Icons.remove, size: 40),
    );
  }
}

class TextCounterEx2 extends StatelessWidget {
  final Color color;
  final int counter;
  const TextCounterEx2({super.key, required this.counter, this.color = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Text("$counter", style: TextStyle(fontSize: 40, color: color));
  }
}
