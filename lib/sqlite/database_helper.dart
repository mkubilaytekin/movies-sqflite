import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class VeritabaniYardimcisi {
  static final String veritabaniAdi = "filmler.db";

  static Future<Database> veriTabaniErisim() async {
    String veritabaniYolu = join(await getDatabasesPath(), veritabaniAdi);

    if(await databaseExists(veritabaniYolu)){
      print("veritabani zaten var kopyalamaya gerek yok");
    }else{
      ByteData data = await rootBundle.load("database/$veritabaniAdi");
      List<int> bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
      await File(veritabaniYolu).writeAsBytes(bytes, flush: true);
      print("veritabani kopyalandi");
    }

    return openDatabase(veritabaniYolu);
  }
}