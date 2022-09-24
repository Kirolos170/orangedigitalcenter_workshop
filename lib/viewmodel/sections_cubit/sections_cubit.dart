import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:workshop/constants.dart';
import 'package:workshop/viewmodel/DataBase/network/dio_helper.dart';

import '../../model/sections_model.dart';
import '../DataBase/network/end_points.dart';

part 'sections_state.dart';

class SectionsCubit extends Cubit<SectionsState> {
  SectionsCubit() : super(SectionsInitial());
  static SectionsCubit get(context)=> BlocProvider.of(context);

    sectionsmodel? mymodel ;


  void getsectionsdata() async{


await DioHelper.getData(url: sectionEndPoint ,token: TOKEN).then((value) {


  mymodel = sectionsmodel.fromJson(value.data);

emit(SectionsData());

});


  }


}
