import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:workshop/view/pages/add_notes_screen.dart';
import 'package:workshop/view/pages/calender_screen.dart';
import 'package:workshop/view/pages/exams_screen.dart';
import 'package:workshop/view/pages/lectures.dart';
import 'package:workshop/view/pages/sections.dart';

import '../../viewmodel/home_cubit/home_cubit.dart';
import '../components/Home_screen_card/home_screen_card.dart';
import '../components/core(reusable-components)/gogle_navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const Color kBackgroundColor = Color(0xFFF1EFF1);


    return SafeArea(
      child: BlocProvider(
        create: (context) => HomeCubit(),
        child: BlocConsumer<HomeCubit, HomeState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {

            HomeCubit mycubit =HomeCubit.get(context);
            return Scaffold(
              bottomNavigationBar: NAvigationBar(context: context ,myindex: 0),
              backgroundColor: kBackgroundColor,
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          "Orange",
                          style: TextStyle(
                              color: Colors.orange,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Digital Center",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 35,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MyCard(cardicon: Icons.book, cardtext: "Lectures",onclick:(){Navigator.push(context, MaterialPageRoute(builder: (builder)=>Lectures()));} ),
                        MyCard(onclick: (){

                          Navigator.push(context, MaterialPageRoute(builder: (builder)=>Sections()));


                        },
                            cardicon: Icons.people_alt_sharp,
                            cardtext: "Sections")
                      ],
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MyCard(onclick: (){

                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Midterms()));


                        },
                            cardicon: Icons.note_add_rounded,
                            cardtext: "Midterms"),
                        MyCard(
                            onclick: (){},
                            cardicon: Icons.note_alt, cardtext: "Finals")
                      ],
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MyCard(onclick: (){

                          Navigator.push(context, MaterialPageRoute(builder: (builder)=>CalenderScreen()));

                        },
                            cardicon: Icons.calendar_month_sharp,
                            cardtext: "Events"),
                        MyCard(onclick: (){Navigator.push(context, MaterialPageRoute(builder: (builder)=>AddNoteScreen()));},
                            cardicon: Icons.sticky_note_2_sharp,
                            cardtext: "Notes")
                      ],
                    ),
                    SizedBox(
                      height: 2,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
