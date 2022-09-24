import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:workshop/constants.dart';
import 'package:workshop/viewmodel/DataBase/network/dio_helper.dart';

import '../../model/exams_model.dart';
import '../DataBase/network/end_points.dart';

part 'exams_state.dart';

class ExamsCubit extends Cubit<ExamsState> {
  ExamsCubit() : super(ExamsInitial());

  static ExamsCubit get(context)=> BlocProvider.of(context);
  examsmodel? mymodel ;


  void getexams ()async
  {

    await DioHelper.getData(url: userExamsEndPoint, token: TOKEN).then((value) {

      mymodel = examsmodel.fromJson(value.data);

      emit(GetExams());


    });

  }


}
