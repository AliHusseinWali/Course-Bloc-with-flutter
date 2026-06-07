import 'package:bloc_course/barrel_file.dart';

class AddButtonEx1 extends StatelessWidget {
  const AddButtonEx1({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        context.read<CounterCubitEx1>().increment();
      },
      icon: Icon(Icons.add, size: 40),
    );
  }
}

class RemoveButtonEx1 extends StatelessWidget {
  const RemoveButtonEx1({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        context.read<CounterCubitEx1>().decrement();
      },
      icon: Icon(Icons.remove, size: 40),
    );
  }
}

class TextCounterEx1 extends StatelessWidget {
  final Color color;
  final int counter;
  const TextCounterEx1({super.key, required this.counter, this.color = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Text("$counter", style: TextStyle(fontSize: 40, color: color));
  }
}
