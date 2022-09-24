

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:workshop/view/pages/home_screen.dart';


import '../DataBase/network/dio_helper.dart';
import '../DataBase/network/end_points.dart';
import 'package:workshop/model//login_model.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  static LoginCubit get(context) => BlocProvider.of(context);
  TextEditingController mailc = TextEditingController();
  TextEditingController passwordc = TextEditingController();
  login_model? mymodel ;
   late String  text  ;


  void login(context) async {
  await  DioHelper.postData(url: loginEndPoint, data: {
      "email": mailc.text.toString(),
      "password": passwordc.text.toString()
    }).then((value) {
      var json = value.data;

      mymodel= login_model.fromJson(json);
      if(value.statusCode == 200){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));

      }

print(mymodel!.code);
      print(mymodel!.message);
      text = mymodel!.message.toString();
      print(text);





      emit(LoginSucsses());
    }).catchError((e){

       text = "failed log in" ;
      emit(LoginFail());
print("fail");

    }




    );




  }


}
