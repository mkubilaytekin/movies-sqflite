import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/entity/filmler.dart';

class DetaySayfaCubit extends Cubit<Filmler>{
  DetaySayfaCubit():super(Filmler(id: 1, ad: "Django", resim: "django.png", fiyat: 24));

}