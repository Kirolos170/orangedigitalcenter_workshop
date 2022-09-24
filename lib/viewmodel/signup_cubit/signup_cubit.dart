

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:workshop/model/signup_model.dart';
import 'package:workshop/view/pages/login_screen.dart';
import 'package:workshop/view/pages/signup_screen.dart';
import 'package:workshop/viewmodel/DataBase/network/dio_helper.dart';
import 'package:workshop/viewmodel/login_cubit/login_cubit.dart';

import '../DataBase/network/end_points.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit() : super(SignupInitial());
  static SignupCubit get(context)=> BlocProvider.of(context);
  TextEditingController namc = TextEditingController();
  TextEditingController emailc = TextEditingController();
  TextEditingController passwordc = TextEditingController();
  TextEditingController phonec = TextEditingController();
  String? gender ;
  String? university ;
  String? grade ;

  signupmodel? mymodel;
 late String? text;


  void signup(context) async
  {
print(phonec.text);
   await DioHelper.postData(url: registerEndPoint, data: {
     "email" : emailc.text.toString(),
     "password" : passwordc.text.toString() ,
   "name":namc.text.toString(),
   "gender":"m",
   "phoneNumber":phonec.text.toString(),
   "universityId": 1,
"gradeId": 4,
   "roleId": 4
   }).then((value) {

     if(value.statusCode==200)
       {
         Navigator.push(context, MaterialPageRoute(builder: (context)=>LogIn()));
         emit(SignupSucess());

       }
     print(value.statusCode);

     mymodel = signupmodel.fromJson(value.data);
     text = mymodel!.message;


   }).catchError((e){
print("catch error");

print(namc.text+ " "  +  " "   + passwordc.text + " " +  "  "+   emailc.text+namc.text);
     text = "error sign up";
     emit(SignupFail());


   });




  }



}
