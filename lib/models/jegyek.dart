 import 'package:isar/isar.dart';

part 'jegyek.g.dart';
@Collection()

class jegyek{
  Id id=Isar.autoIncrement;
  late int jegy;
  late int tantargyid;
  late DateTime datum;
}