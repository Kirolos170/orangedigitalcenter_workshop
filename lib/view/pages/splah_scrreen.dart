import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:percent_indicator/percent_indicator.dart';

import '../../viewmodel/splash_cubit/splash_cubit.dart';
import 'login_screen.dart';

class SplachScreen extends StatelessWidget {
  const SplachScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashCubit(),
      child: BlocConsumer<SplashCubit, SplashState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          SplashCubit mycubit =  SplashCubit.get(context);

          return Scaffold(
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    SizedBox(width: 30,),
                    Text("Orange", style: TextStyle(color: Colors.orange,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),

                    ),


                    Text("Digital Center", style: TextStyle(color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),

                    ),
                    SizedBox(width: 35,),

                  ],),
                SizedBox(height: 80,),
                LinearPercentIndicator(
                    onAnimationEnd: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LogIn()));
                    },
                    barRadius: Radius.circular(20),
                    percent: .9,
                    width: 400,
                    lineHeight: 20,
                    animation: true,
                    animationDuration: 3000,
                    progressColor: Colors.orange,
                    linearStrokeCap: LinearStrokeCap.roundAll


                )


              ],

            ),
          );
        },
      ),
    );
  }
}
