import 'package:bloc_course/barrel_file.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double buttonWidth = MediaQuery.of(context).size.width / 2.3;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Welcome in Bloc Course",
          style: TextStyle(color: Colors.brown[50], fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Wrap(
              spacing: 10,
              runSpacing: 20,
              alignment: WrapAlignment.center,
              children: [
                _buildButtonWrapper(buttonWidth, "Example 1", page: ExampleOne()),
                _buildButtonWrapper(buttonWidth, "Example 2", page: ExampleTwo()),
                _buildButtonWrapper(buttonWidth, "Example 3", page: ExampleThree()),
                // _buildButtonWrapper(buttonWidth, "Example 4", page: ExampleFour()),
                // _buildButtonWrapper(buttonWidth, "Example 5", page: ExampleFive()),
                // _buildButtonWrapper(buttonWidth, "Example 6", page: ExampleSix()),
                // _buildButtonWrapper(buttonWidth, "Example 7", page: ExampleSeven()),
                // _buildButtonWrapper(buttonWidth, "Example 8", page: ExampleEight()),
                // _buildButtonWrapper(buttonWidth, "Example 9", page: ExampleNine()),
                // _buildButtonWrapper(buttonWidth, "Example 10", page: ExampleTen()),
                // _buildButtonWrapper(buttonWidth, "Example 11", page: ExampleEleven()),
                // _buildButtonWrapper(buttonWidth, "Example 12", page: ExampleTwelve()),
                // _buildButtonWrapper(buttonWidth, "Example 13", page: ExampleThirteen()),
                // _buildButtonWrapper(buttonWidth, "Example 14", page: ExampleFourteen()),
                // _buildButtonWrapper(buttonWidth, "Example 15", page: ExampleFifteen()),
                // _buildButtonWrapper(buttonWidth, "Example 16", page: ExampleSixteen()),
                // _buildButtonWrapper(
                //   buttonWidth,
                //   "Example 17",
                //   onPressed: () {
                //     Get.toNamed("/login_seventeen");
                //   },
                // ),
                // _buildButtonWrapper(
                //   buttonWidth,
                //   "Example 18",
                //   onPressed: () {
                //     String? role18 = sharedPreferences!.getString("role18");
                //     if (role18 == "user18") {
                //       Get.toNamed("/example18");
                //     } else if (role18 == "admin") {
                //       Get.toNamed("/admin18");
                //     } else {
                //       Get.toNamed("/login_eighteen");
                //     }
                //   },
                // ),
                // _buildButtonWrapper(
                //   buttonWidth,
                //   "Example 19",
                //   onPressed: () {
                //     String? role19 = sharedPreferences!.getString("role19");
                //     if (role19 == "user19") {
                //       Get.toNamed("/example19");
                //     } else if (role19 == "admin") {
                //       Get.toNamed("/admin19");
                //     } else {
                //       Get.toNamed("/login_nineteen");
                //     }
                //   },
                // ),
                // _buildButtonWrapper(buttonWidth, "Example 20", page: ExampleTwenty()),
                // _buildButtonWrapper(buttonWidth, "Example 21", page: ExampleTwentyOne()),
                // _buildButtonWrapper(buttonWidth, "Example 22", page: ExampleTwentyTwo()),
                // _buildButtonWrapper(buttonWidth, "Example 23", page: ExampleTwentyThree()),
                // _buildButtonWrapper(buttonWidth, "Example 24", page: ExampleTwentyFour()),
                // _buildButtonWrapper(buttonWidth, "Example 25", page: ExampleTwentyFive()),
                // _buildButtonWrapper(buttonWidth, "Example 26", page: ExampleTwentySix()),
                // _buildButtonWrapper(buttonWidth, "Example 27", page: ExampleTwentySeven()),
                // _buildButtonWrapper(buttonWidth, "Example 28", page: ExampleTwentyEight()),
                // _buildButtonWrapper(buttonWidth, "Example 29", page: ExampleTwentyNine()),
                // _buildButtonWrapper(buttonWidth, "Example 30", page: ExampleThirty()),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildButtonWrapper(double width, String title, {Widget? page, VoidCallback? onPressed}) {
    return SizedBox(
      width: width,
      child: MaterialButtonExamples(exampleNumber: title, destinationPage: page, onPressed: onPressed),
    );
  }
}
