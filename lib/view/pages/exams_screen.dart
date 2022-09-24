import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../viewmodel/exams_cubit/exams_cubit.dart';
import '../../viewmodel/lectures_cubit/lecture_cubit.dart';
import '../components/core(reusable-components)/custom_sections_widget.dart';
class Midterms extends StatelessWidget {
  const Midterms({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    Color kBackgroundColor = Color(0xFFF1EFF1);
    return BlocProvider(
      create: (context) => ExamsCubit()..getexams(),
      child: BlocConsumer<ExamsCubit, ExamsState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          ExamsCubit mycubit = ExamsCubit.get(context);

          return Scaffold(
              backgroundColor: kBackgroundColor,
              appBar: AppBar(
                backgroundColor: Colors.white,
                centerTitle: true,
                title: Text("MidTerms",
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
              body: mycubit.mymodel==null ? Center(child: CircularProgressIndicator(color: Colors.deepOrange,strokeWidth: 5,)):


              ListView.builder(
                itemBuilder: (context, index) {
                  return

                    MySectionCustomWidget(
                      text: mycubit.mymodel!.data![index].examSubject,
                      day: mycubit.mymodel!.data![index].examDate,
                      starttime:mycubit.mymodel!.data![index].examStartTime,
                      endtime: mycubit.mymodel!.data![index].examEndTime,);
                },
                itemCount: mycubit.mymodel!.data!.length,
              ));
        },
      ),
    );
  }
}

