// ignore: file_names
import 'package:bloc_course/barrel_file.dart';

class ButtonCounterEx3 extends StatelessWidget {
  final void Function()? onPressed;
  final IconData icon;
  const ButtonCounterEx3({super.key, this.onPressed, required this.icon});

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: onPressed, icon: Icon(icon, size: 40));
  }
}

class TextCounterEx3 extends StatelessWidget {
  final Color color;
  final int counter;
  const TextCounterEx3({super.key, required this.counter, this.color = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Text("$counter", style: TextStyle(fontSize: 40, color: color));
  }
}
