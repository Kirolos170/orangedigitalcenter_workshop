import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workshop/view/pages/login_screen.dart';

import '../../viewmodel/setting_cubit/settting_cubit.dart';
import '../components/core(reusable-components)/custom_setting_widget.dart';
import '../components/core(reusable-components)/gogle_navigation_bar.dart';

class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return

      BlocProvider(
        create: (context) => SetttingCubit(),
        child: BlocConsumer<SetttingCubit, SetttingState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            SetttingCubit mycubit =SetttingCubit.get(context);

            return Scaffold(

              bottomNavigationBar: NAvigationBar(context: context,myindex: 2),

                body: SafeArea(child: Column(

                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(width: double.infinity,),
                    Text("Settings", style: TextStyle(
                        fontSize: 30,
                        color: Colors.black


                    ),),
                    MyCustomSettingWidget(text1: "FAQ",),
                    MyCustomSettingWidget(text1: "Terms & Conditions",),
                    MyCustomSettingWidget(text1: "Our Partners",),
                    MyCustomSettingWidget(text1: "Support",),
                    InkWell(child: MyCustomSettingWidget(text1: "Log Out",),onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LogIn()));

                    },)


                  ],


                ))

            );
          },
        ),
      );
  }
}
