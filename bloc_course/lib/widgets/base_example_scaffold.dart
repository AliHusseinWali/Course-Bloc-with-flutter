import 'package:bloc_course/barrel_file.dart';

class BaseExampleScaffold extends StatelessWidget {
  final String title;
  final String description;
  final List<Widget> children;

  const BaseExampleScaffold({super.key, required this.title, required this.description, required this.children});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          ("$title\nState Management Bloc"),
          textAlign: TextAlign.center,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                description,
                style: TextStyle(fontSize: 16, color: Colors.brown, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 40),
            ...children,
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
