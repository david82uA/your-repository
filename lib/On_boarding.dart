import 'package:SmartSchool/main.dart';
import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'sqlhandler.dart';
// import 'main.dart';


// Future<void> loadLocale() async {
// //  SharedPreferences prefs = await SharedPreferences.getInstance();
//   //String? languageCode = prefs.getString('language_code');
//
//
//   }



class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  OnboardingScreenState createState() => OnboardingScreenState();
}


class OnboardingScreenState extends State<OnboardingScreen> {
  // PageController to manage multiple onboarding pages
  final PageController _pageController = PageController(
    initialPage: 0,
  );
   MydbClass db = MydbClass();
  final myController = TextEditingController();


  @override

  Widget build(BuildContext context) {

    return
      PageView(
        controller: _pageController,
           children: [
              Scaffold(
              body: Padding(
                  padding: const EdgeInsets.only(top: 150, left: 20, right: 20),
              child: SizedBox(
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                // Centers horizontally
                children: [
                  Text(
                  AppLocalizations.of(context)!.welcome,
                  style: TextStyle(
                  fontSize: 22,
                  ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Text(
                      AppLocalizations.of(context)!.tothe,
                      style: TextStyle(
                      fontSize: 22, // Correct alpha value
                      ),
                      softWrap: true,
                      ),
                      Text(
                      "SmartSchool",
                      style: TextStyle(
                      color: Color.fromRGBO(0, 149, 255, 1),
                      fontSize: 22,
                      ),
                      ),

                      Text(
                      AppLocalizations.of(context)!.application,
                      style: TextStyle(
                      fontSize: 22,
                      ),
                      softWrap: true,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Text(
                      AppLocalizations.of(context)!.select,
                      softWrap: true,
                      style: TextStyle(
                        fontSize: 22,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 70.0),
                    child: ElevatedButton(
                        onPressed: () =>{
                          if (_pageController.hasClients) {  // Ensures PageView is built
                            _pageController.nextPage(
                              duration: Duration(milliseconds: 400),
                              curve: Curves.fastOutSlowIn,
                            )
                          }
                        },
                        style: ButtonStyle(
                        ),
                        child: Text(
                            AppLocalizations.of(context)!.next,
                            style: TextStyle(
                              fontSize: 16,
                              color: Color.fromRGBO(0, 149, 255, 1)
                            ),
                        ),
                    ),
                  )
                  ],
                  ),
                ),
              ),
            ),
             Scaffold(
                   body: Padding(
                     padding: const EdgeInsets.all(20.0),
                     child: SizedBox(
                       width: double.infinity,
                       child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                             FutureBuilder<List<Map<String,dynamic>>>(
                                      future: db.tantargyakListMap(),
                                      builder: (context, snapshot) {
                                        if(snapshot.hasData){
                                          List<Map<String, dynamic>> tantargyak = snapshot.data!;
                                          return Expanded(
                                              child:ListView.builder(
                                                      shrinkWrap: true,
                                                      itemCount: tantargyak.length,
                                                      itemBuilder: (BuildContext context, int index) {
                                                        var tantargy = tantargyak[index];
                                                        return ListTile(
                                                          title: Row(
                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                              children:[
                                                                Center(
                                                                  child: Text(
                                                                    tantargy["TantargyNev"],
                                                                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                                                  ),
                                                                ),
                                                                ElevatedButton(
                                                                    onPressed: () async {
                                                                      await db.deleteSubject(tantargy["ID"]);
                                                                      setState(() {});
                                                                    },
                                                                    child: Icon(Icons.close)
                                                                )
                                                              ]
                                                          ),
                                                        );
                                                      },
                                                  ),
                                            );
                                        }
                                        else if(snapshot.connectionState == ConnectionState.waiting){
                                          return CircularProgressIndicator();
                                        }
                                        return Text("");
                                      }

                             ),
                            // FutureBuilder<double?>(
                            //   future: db.atlag(), // Call the async function
                            //   builder: (context, snapshot) {
                            //     if (snapshot.connectionState == ConnectionState.waiting) {
                            //       return CircularProgressIndicator(); // Show loading spinner
                            //     } else if (snapshot.hasError) {
                            //       return Text("Error: ${snapshot.error}");
                            //     } else if (snapshot.hasData) {
                            //       return Text(snapshot.data!.toStringAsFixed(2)); // Display the result
                            //     } else {
                            //       return Text("No data");
                            //     }
                            //   },
                            // ),
                             ElevatedButton(
                                 onPressed: () => showDialog<void>(
                                     context: context,
                                     builder: (BuildContext context){
                                       return AlertDialog(
                                         title: Title(
                                             color: Color.fromRGBO(0, 149, 255, 1),
                                             child: Text(AppLocalizations.of(context)!.addSubject)
                                         ),
                                         content: Form(
                                           child: Column(
                                               mainAxisSize: MainAxisSize.min,
                                               children: [
                                                 TextField(
                                                     controller: myController,
                                                     keyboardType: TextInputType.text,
                                                     decoration: InputDecoration(labelText: AppLocalizations.of(context)!.subjectName),
                                                 ), // Text for the grade scale
                                                 ElevatedButton(
                                                     onPressed:() => {
                                                       if(myController.text.trim().isNotEmpty){ // a space mentes bemenet ha nem nulla akkor hozzadja, majd frissiti a tantagyrak listajat: setstate
                                                       db.insertSubject(myController.text),
                                                       myController.clear(),
                                                       Navigator.pop(context),
                                                       setState(() {}),
                                                       }
                                                     },
                                                     child: Text(AppLocalizations.of(context)!.add))
                                                   
                                                 
                                               ],
                                             ),
                                         ),
                                       );
                                     }
                                     ),
                                 child: Icon(Icons.add)),
                            ElevatedButton(
                                onPressed: () async {
                                    await Navigator.push(context,MaterialPageRoute(builder: (context) => MainScreen()));
                                    setState(() {});
                                },
                                child: Icon(Icons.navigate_next),
                            )
                           ],
                         ),
                     ),
                   ),
                   ),
             // Scaffold(), // Terv ha szeretnek valtani 5 es 10 es rendszerek kozt;
          ]
      );
  }

}




