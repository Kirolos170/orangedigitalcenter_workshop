import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../../viewmodel/calender_cubit/calender_cubit.dart';

class CalenderScreen extends StatelessWidget {
  const CalenderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color kBackgroundColor = Color(0xFFF1EFF1);
    return BlocProvider(
      create: (context) => CalenderCubit(),
      child: BlocConsumer<CalenderCubit, CalenderState>(
        listener: (context, state) {

        },
        builder: (context, state) {
          CalenderCubit mycubit = CalenderCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              backgroundColor: kBackgroundColor,
              centerTitle: true,
              title: Text(
                "Midterms",
                style: TextStyle(color: Colors.black),
              ),
              leading: IconButton(onPressed: (){

                Navigator.pop(context);

              }, icon: Icon(      Icons.arrow_back_ios,
                size: 30,
                color: Colors.orange,))


            ),
            body: SfCalendar(
              view: CalendarView.month,

              firstDayOfWeek: 5,
              initialDisplayDate: DateTime(2022, 09, 19),
              todayHighlightColor: Colors.orange,
              // dataSource: MeetingDataSource(get()),
              appointmentTextStyle: TextStyle(
                fontSize: 25,
                letterSpacing: 5,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
              //initialSelectedDate: DateTime(2022,09,19),
            ),
          );
        },
      ),
    );
  }
}

// List<Appointment> get()
// {
// List<Appointment> meetings= [] ;
// final DateTime today = DateTime.now();
// final DateTime startdate = DateTime(2022 , 09 , 19);
// final DateTime enddate = DateTime(2022 , 09 , 30);
// meetings.add(Appointment(startTime:startdate , endTime: enddate,subject:"Event",color: Colors.orange )
//
// );
// return meetings ;
// }

//
// class MeetingDataSource extends CalendarDataSource{
//   MeetingDataSource(List<Appointment> source) {
//     appointments = source;
//   }
// }
