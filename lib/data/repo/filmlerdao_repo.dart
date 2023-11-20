import 'package:filmler_app/sqlite/database_helper.dart';

import '../entity/filmler.dart';

class FilmlerDaoRepo{

  Future<List<Filmler>> filmleriYukle() async {
    var db = await VeritabaniYardimcisi.veriTabaniErisim();
    List<Map<String, dynamic>> maps = await db.rawQuery("SELECT * FROM filmler");

    return List.generate(maps.length, (index){
      var satir = maps[index];
      return Filmler(id: satir["id"], ad: satir["ad"], resim: satir["resim"], fiyat: satir["fiyat"]);
    });
  }

}