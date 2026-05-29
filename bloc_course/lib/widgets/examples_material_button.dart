import 'package:bloc_course/barrel_file.dart';

class MaterialButtonExamples extends StatelessWidget {
  final String exampleNumber;
  final Widget? destinationPage;
  final VoidCallback? onPressed;

  const MaterialButtonExamples({super.key, required this.exampleNumber, this.destinationPage, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: MaterialButton(
        color: Colors.green,
        textColor: Colors.brown[50],
        minWidth: 250,
        height: 50,
        onPressed:
            onPressed ??
            () {
              if (destinationPage != null) {
                Navigator.push(context, MaterialPageRoute(builder: (context) => destinationPage!));
              }
            },
        child: Text(exampleNumber, textAlign: TextAlign.center, style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
