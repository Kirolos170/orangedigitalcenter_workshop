import 'package:flutter/material.dart';
import 'package:workshop/view/pages/add_notes_screen.dart';
import 'package:workshop/view/pages/calender_screen.dart';

import 'package:workshop/view/pages/login_screen.dart';
import 'package:workshop/view/pages/home_screen.dart';
import 'package:workshop/view/pages/news_screen.dart';
import 'package:workshop/view/pages/sections.dart';
import 'package:workshop/view/pages/signup_screen.dart';
import 'package:workshop/view/pages/splah_scrreen.dart';
import 'package:workshop/viewmodel/DataBase/network/dio_helper.dart';

void main() async{


  await DioHelper.init() ;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplachScreen(),
    );
  }
}