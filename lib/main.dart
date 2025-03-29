import 'package:SmartSchool/ablakok.dart';
import 'package:SmartSchool/sqlhandler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'On_boarding.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// import 'sqlhandler.dart';

void main() {
  runApp(SmartSchool());
}

class SmartSchool extends StatefulWidget {
  const SmartSchool({super.key});


  @override
  SmartSchoolState createState() => SmartSchoolState();
}

class SmartSchoolState extends State<SmartSchool> {

  bool _isFirstLaunch = true;
  Locale locale = Locale('en');


  @override
  void initState() {
    super.initState();
    _checkFirstLaunch();
    // loadLocale();
  }

  Future<void> _checkFirstLaunch() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isFirstTime = true;//prefs.getBool('isFirstLaunch') ?? true;

    if (isFirstTime) {
      await prefs.setBool('isFirstLaunch', false); // Mark it as not first time
    }

    setState(() {
      _isFirstLaunch = isFirstTime;
    });
  }




  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English
        Locale('hu'), // Hungarian
      ],
      home: _isFirstLaunch ? OnboardingScreen() : MainScreen(),
    );
  }
}
class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {

  final MydbClass db = MydbClass();


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
    // FutureBuilder<double>(
    //   future: db.atlag(), // Call the async function
    //   builder: (context, snapshot) {
    //     if (snapshot.connectionState == ConnectionState.waiting) {
    //     return CircularProgressIndicator(); // Show loading spinner
    //     } else if (snapshot.hasError) {
    //     return Text("Error: ${snapshot.error}");
    //     } else if (snapshot.hasData) {
    //     return Text(snapshot.data!.toStringAsFixed(2)); // Display the result
    //     } else {
    //     return Text("No data");
    //     }
    // },
    // ),
        ElevatedButton(
          onPressed: () async {
            await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ViewGrades())
            );
            setState(() {});
          },
          child: Text("View Grades")
        ),
      ],
    );
  }


}
