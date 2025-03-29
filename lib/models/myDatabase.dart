import 'package:SmartSchool/models/hianyzasok.dart';
import 'package:SmartSchool/models/isar.dart';
import 'package:SmartSchool/models/jegyek.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

class myDatabase{
  static late Isar isar;

  Future<bool> letezike(String tantargy) async {
    final count = await isar.tantargyaks
        .filter()
        .tantargynevEqualTo(tantargy)
        .count();
    return count > 0;
  }
  static Future<void> initialize() async {
    final dir = await getApplicationDocumentsDirectory();
    isar = await Isar.open(
        [TantargyakSchema,JegyekSchema,HianyzasokSchema],
        directory: dir.path);
  }
  Future<void> addSubject(String subject) async {
    final newTantargy = tantargyak()..tantargynev = subject;
     if(await letezike(subject) == false)await isar.writeTxn(()=> isar.tantargyaks.put(newTantargy));
  }
  Future<void> deleteSubject(int id) async{
    await isar.writeTxn(()=>isar.tantargyaks.delete(id));
  }
}