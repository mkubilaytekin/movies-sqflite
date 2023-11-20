import 'package:filmler_app/data/entity/filmler.dart';
import 'package:filmler_app/data/repo/filmlerdao_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnasayfaCubit extends Cubit<List<Filmler>>{
  AnasayfaCubit():super(<Filmler>[]);
  var frepo = FilmlerDaoRepo();

  Future<void> filmleriYukle() async {
    var filmListesi = await frepo.filmleriYukle();
    emit(filmListesi);
  }

}