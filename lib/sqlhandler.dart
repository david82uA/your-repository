import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class MydbClass {
  static final MydbClass _instance = MydbClass._internal();
  static Database? _myDataBase;

  factory MydbClass() {
    return _instance;
  }

  MydbClass._internal();

  Future<Database?> get database async {
    if (_myDataBase != null) return _myDataBase;
    _myDataBase = await _initDatabase();
    return _myDataBase;
  }

  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'MyDataBase.db');
    return await openDatabase(
      path,
      version: 2,
      onCreate: (Database db, int version) async {
      await db.execute('''
                CREATE TABLE tantargyak (
                  ID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
                  TantargyNev TEXT
                );
                CREATE TABLE jegyek (
                  ID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
                  tantargy_id INTEGER NOT NULL,
                  jegy INTEGER NOT NULL,
                  datum DATE,
                );
                CREATE TABLE hianyzasok(
                  ID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
                  tantargy_id INTEGER NOT NULL,
                  datum DATE,
                  igazolt_e BOOL,
                  FOREIGN KEY (tantargy_id) REFERENCES tantargyak(ID) 
                );
                CREATE TABLE hazik(
                  ID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
                  cim TEXT,
                  leiras TEXT,
                  tantargy_id INTEGER NOT NULL,
                  hatarido DATE,
                  FOREIGN KEY (tantargy_id) REFERENCES tantargyak(ID)
                );
              ''');
    },
    );
  }


  Future<int> subjectCount() async{
    List<Map<String, Object?>>? result = await _myDataBase?.rawQuery('SELECT COUNT(*) AS eredmeny FROM tantargyak');
    if(result!.isEmpty) {
      return 0;
    }
    else {
      return Sqflite.firstIntValue(result) as int;
    }
  }

  Future<List<Map<String, dynamic>>> tantargyakListMap() async {
    final db = await database; // Get database instance
    return await db!.query('tantargyak'); // Fetch all rows from 'tantargyak'
  }
  Future<List<Map<String, dynamic>>> jegyekTantargynalListMap(int tantargyid) async {
    final db = await database; // Get database instance
    return await db!.rawQuery('SELECT jegy,datum FROM jegyek WHERE tantargy_id=?',[tantargyid]); // Fetch all rows from 'tantargyak'
  }
  Future<void> deleteSubject(int id) async {
    _myDataBase!.rawDelete("DELETE * FROM tantargyak WHERE ID=?",[id]);
  }
  Future<void> insertSubject(String name) async {
    _myDataBase!.rawInsert("INSERT INTO tantargyak(TantargyNev) VALUES (?)",[name]);
  }
  Future<double?> atlag() async {
    final List<Map<String, double>>? result = (await _myDataBase?.rawQuery('SELECT AVG(subject_avg) AS overall_average FROM (SELECT AVG(jegy) AS subject_avg FROM jegyek GROUP BY tantargy_id) AS subject_averages;'))?.cast<Map<String, double>>();
    if(result?[0]["overall_value"]!=0) return result?[0]["overall_average"];
    else return 1;
  }
  Future<List<Map<String,dynamic>>> gradesWhere(String Tantargy) async{
    return _myDataBase!.rawQuery("SELECT jegy,datum FROM jegyek WHERE tantargy=?",[Tantargy]);
  }

}
//AlertDialog(
//title: Title(
//color: Color.fromRGBO(0, 149, 255, 1),
// child: Text("Jegyek"),
// ),
// content:  FutureBuilder<List<Map<String,dynamic>>>(
// future: db.gradesWhere(tantargy["TantargyNev"]),
// builder:(context, snapshot) {
// return ListView.builder(
// itemBuilder:(BuildContext context,int index){
// return null;
// // ide jonnek a jegyek felsorakoztava itemcount,megirni az sqlhanglerbe h szamolja meg stb.
// // return Row(
// //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //   children: [
// //
// //   ],
//
// //);
// }
// );
// }
// )
// );

