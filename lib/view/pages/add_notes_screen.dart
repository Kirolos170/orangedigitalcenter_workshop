import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workshop/view/components/addnotes_screen_textformfield/addnotes_screen_textformfield.dart';

import '../../viewmodel/add_notes_cubit/add_notes_cubit.dart';

class AddNoteScreen extends StatelessWidget {
  const AddNoteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: BlocConsumer<AddNotesCubit, AddNotesState>(
        listener: (context, state) {

        },
        builder: (context, state) {
          AddNotesCubit mycubit = AddNotesCubit.get(context);
          return Scaffold(
            body: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                       IconButton(onPressed: (){
                         Navigator.pop(context);

                       }, icon: Icon(Icons.arrow_back_ios,)),
                        SizedBox(
                          width: 70,
                        ),
                        Text(
                          "Add Note",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    MyTextFormField(
                      labeltext: "Title",
                      numoflines: 1,
                    ),
                    MyTextFormField(
                      labeltext: "2022-09-19 15:16:06.796272",
                      numoflines: 1,
                      myTextFormFieldhinttext: "Date",
                    ),
                    MyTextFormField(
                      myTextFormFieldhinttext: "Note",
                      numoflines: 8,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.add),
                          Text(
                            "Add",
                            style:
                            TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
