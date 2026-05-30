import 'package:bloc_course/barrel_file.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        context.read<CounterCubitExampleOne>().increment();
      },
      icon: Icon(Icons.add, size: 40),
    );
  }
}

class RemoveButton extends StatelessWidget {
  const RemoveButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        context.read<CounterCubitExampleOne>().decrement();
      },
      icon: Icon(Icons.remove, size: 40),
    );
  }
}

class TextCounter extends StatelessWidget {
  final Color color;
  final int counter;
  const TextCounter({super.key, required this.counter, this.color = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Text("$counter", style: TextStyle(fontSize: 40, color: color));
  }
}
