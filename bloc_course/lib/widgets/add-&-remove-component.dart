import 'package:bloc_course/barrel_file.dart';


class AddButton extends StatelessWidget {
  const AddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        context.read<CounterCubit>().increment();
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
        context.read<CounterCubit>().decrement();
      },
      icon: Icon(Icons.remove, size: 40),
    );
  }
}

class TextCunter extends StatelessWidget {
  final int counter;
  const TextCunter({super.key, required this.counter});

  @override
  Widget build(BuildContext context) {
    return Text("$counter", style: TextStyle(fontSize: 40));
  }
}
