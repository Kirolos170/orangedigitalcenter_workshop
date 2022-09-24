import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../viewmodel/sections_cubit/sections_cubit.dart';
import '../components/core(reusable-components)/custom_sections_widget.dart';

class Sections extends StatelessWidget {
  Sections({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    Color kBackgroundColor = Color(0xFFF1EFF1);
    return BlocProvider(
      create: (context) => SectionsCubit()..getsectionsdata(),
      child: BlocConsumer<SectionsCubit, SectionsState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          SectionsCubit mycubit = SectionsCubit.get(context);

          return Scaffold(
              backgroundColor: kBackgroundColor,
              appBar: AppBar(
                backgroundColor: Colors.white,
                centerTitle: true,
                title: Text("Sections",
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
              body: mycubit.mymodel==null ?Center(child: CircularProgressIndicator(color: Colors.deepOrange,strokeWidth: 5,)) :



              ListView.builder(
                itemBuilder: (context, index) {
                  return

                      MySectionCustomWidget(
                          text: mycubit.mymodel!.data![index].sectionSubject,
                          day: mycubit.mymodel!.data![index].sectionDate,
                          starttime:mycubit.mymodel!.data![index].sectionStartTime,
                          endtime: mycubit.mymodel!.data![index].sectionStartTime,);
                },
                itemCount: mycubit.mymodel!.data!.length,
              ));
        },
      ),
    );
  }
}
