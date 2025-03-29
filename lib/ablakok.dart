import 'package:SmartSchool/sqlhandler.dart';
import 'package:flutter/material.dart';

class ViewGrades extends StatefulWidget{
  @override
  ViewGradesState createState() => ViewGradesState();

}

class ViewGradesState extends State<ViewGrades>{
  MydbClass db = MydbClass();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: db.tantargyakListMap(),
          builder: (context, snapshot){
            if(snapshot.hasData) {
              List<Map<String, dynamic>> tantargyak = snapshot.data!;
              return Expanded(
                  child: ListView.builder(
                            itemCount: tantargyak.length,
                            itemBuilder: (BuildContext context, int index) {
                              var tantargy = tantargyak[index];
                              return  ListTile(
                                title:  Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () => MaterialPageRoute(
                                          builder: (context) => Scaffold(
                                            body: Column(
                                              children: [
                                                FutureBuilder (
                                                    future: db.jegyekTantargynalListMap(index),
                                                    builder: (context, snapshot){
                                                      if(snapshot.hasData){
                                                        return Expanded(
                                                            child: ListView.builder(
                                                                itemBuilder: (BuildContext context, int index ){
                                                                  return ListTile(
                                                                    title: Row(
                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                      children: [

                                                                      ],
                                                                    ),
                                                                  );
                                                                }
                                                            )
                                                        );
                                                      }
                                                      return Text("");
//<List<Map<String,dynamic>>>                         
                                                    }
                                                )
                                              ],
                                            ),
                                          )),
                                          child: Text(
                                          tantargy["TantargyNev"],
                                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }
                  )

              );
            }
            else if (!snapshot.hasData || snapshot.data!.isEmpty)
              return Center(child: Text('No data available'));
            else if(snapshot.connectionState == ConnectionState.waiting){
              return CircularProgressIndicator();
            }
            else return Text("ERROR");
          }
      ),
    );
  }
}