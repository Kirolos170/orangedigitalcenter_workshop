import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:workshop/constants.dart';
import 'package:workshop/viewmodel/DataBase/network/dio_helper.dart';

import '../../model/lectures_model.dart';
import '../DataBase/network/end_points.dart';

part 'lecture_state.dart';

class LectureCubit extends Cubit<LectureState> {
  LectureCubit() : super(LectureInitial());
 static LectureCubit get(context)=>BlocProvider.of(context);
  lecturesmodel? mymodel ;


void getlecture ()async
{

   await DioHelper.getData(url: lectureEndPoint , token: TOKEN).then((value) {


     mymodel=lecturesmodel.fromJson(value.data);
     emit(LctureGetdata());


   });


}


}
