import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../viewmodel/lectures_cubit/lecture_cubit.dart';
import '../components/core(reusable-components)/custom_sections_widget.dart';
class Lectures extends StatelessWidget {
  const Lectures({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
  var size = MediaQuery.of(context).size;
  Color kBackgroundColor = Color(0xFFF1EFF1);
  return BlocProvider(
  create: (context) => LectureCubit()..getlecture(),
  child: BlocConsumer<LectureCubit, LectureState>(
  listener: (context, state) {
  // TODO: implement listener
  },
  builder: (context, state) {
    LectureCubit mycubit = LectureCubit.get(context);

  return Scaffold(
  backgroundColor: kBackgroundColor,
  appBar: AppBar(
  backgroundColor: Colors.white,
  centerTitle: true,
  title: Text("Lectures",
  style: TextStyle(
  fontSize: 25,
  color: Colors.black,
  fontWeight: FontWeight.bold)),
  leading: IconButton(
  onPressed: () {
  Navigator.pop(context);
  },
  icon: Icon(
  Icons.arrow_back_ios,
  color: Colors.deepOrange,
  size: 30,
  ),
  ),
  actions: [
  IconButton(
  onPressed: () {},
  icon: Icon(
  Icons.filter_alt,
  color: Colors.deepOrange,
  size: 30,
  ),
  )
  ],
  ),
  body: mycubit.mymodel==null ?  Center(child: CircularProgressIndicator(color: Colors.deepOrange,strokeWidth: 5,)) :



  ListView.builder(
  itemBuilder: (context, index) {
  return

  MySectionCustomWidget(
  text: mycubit.mymodel!.data![index].lectureSubject,
  day: mycubit.mymodel!.data![index].lectureDate,
  starttime:mycubit.mymodel!.data![index].lectureStartTime,
  endtime: mycubit.mymodel!.data![index].lectureEndTime,);
  },
  itemCount: mycubit.mymodel!.data!.length,
  ));
  },
  ),
  );
  }
  }

