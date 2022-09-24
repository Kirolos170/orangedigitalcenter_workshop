import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workshop/view/pages/login_screen.dart';

import '../../viewmodel/signup_cubit/signup_cubit.dart';
import '../components/signup_drop_menue/signup_drop_menue.dart';


class SignUp extends StatelessWidget {



  @override
  Widget build(BuildContext context) {

    return BlocProvider(
      create: (context) => SignupCubit(),
      child: BlocConsumer<SignupCubit, SignupState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          SignupCubit mycubit = SignupCubit.get(context);

          return Scaffold(
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller:mycubit.namc ,
                        decoration: InputDecoration(
                           focusedBorder: OutlineInputBorder(

                        borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: Colors.grey, width: 1),
                ),

                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(color: Colors.grey, width: 1),
                            ),
                            label: Text("Name")),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(


                        controller:mycubit.emailc ,
                        decoration: InputDecoration(
                           focusedBorder: OutlineInputBorder(

                        borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: Colors.grey, width: 1),
                ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(color: Colors.grey, width: 1),
                            ),
                            label: Text("E_mail")),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller:mycubit.passwordc ,
                        decoration: InputDecoration(


                          focusedBorder: OutlineInputBorder(

                        borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: Colors.grey, width: 1),
                ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(color: Colors.grey, width: 1),
                            ),
                            suffixIcon: Icon(
                              Icons.visibility_off,
                              color: Colors.orange,
                            ),
                            label: Text("Password")),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        decoration: InputDecoration(

                           focusedBorder: OutlineInputBorder(

                        borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: Colors.grey, width: 1),
                ),

                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(color: Colors.grey, width: 1),
                            ),
                            suffixIcon: Icon(
                              Icons.visibility_off,
                              color: Colors.orange,
                            ),
                            label: Text("Password")),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(



                        controller:mycubit.phonec ,
                        decoration: InputDecoration(

                           focusedBorder: OutlineInputBorder(

                        borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: Colors.grey, width: 1),
                ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(color: Colors.grey, width: 1),
                            ),
                            label: Text("Phone")),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Gender",
                            style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "University",
                            style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(width: 2, color: Colors.orange),
                                borderRadius: BorderRadius.circular(10)),

                            child:DropdownButton(
                                underline: SizedBox(),
                                value: "Male",
                                items: [
                                  DropdownMenuItem(

                                    value: "Female",
                                    child: Container(child: Text("Female")),
                                    onTap: () {

                                     // mycubit.gender = 'Female';
                                    },
                                  ),
                                  DropdownMenuItem(
                                    value: "Male",
                                    child: Text("Male"),
                                    onTap: () {
                                   //   mycubit.gender = "Male";
                                    },
                                  ),
                                ],
                                onChanged: (value) {


                                }),



                          ),




                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(width: 2, color: Colors.orange),
                                borderRadius: BorderRadius.circular(10)),
                            child: DropdownButton(
                                underline: SizedBox(),
                                value: "Cairo",
                                items: [
                                  DropdownMenuItem(
                                   value: "Cairo",
                                    child: Container(child: Text("Cairo")),
                                    onTap: () {
                                  //    mycubit.  university = "Cairo";
                                    },
                                  ),
                                  DropdownMenuItem(
                                    value: "2",
                                    child: Text("AUC"),
                                    onTap: () {
                                //      mycubit.  university = "AUC";
                                    },
                                  ),
                                ],
                                onChanged: (value) {
//mycubit.university =value;

                                }),
                          ),









                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Grade",
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 150,
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.orange),
                            borderRadius: BorderRadius.circular(10)),
                        child: DropdownButton(
                            onTap: (){   },
                            underline: SizedBox(),
                            value:"Grade 1",
                            items: [
                              DropdownMenuItem(
                                value: "Grade 1",
                                child: Container(child: Center(child: Text("Grade 1"))),
                                onTap: () {
                              //    mycubit.  grade = "Grade 1";
                                },
                              ),
                            ],
                            onChanged: (value) {



                            }),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      InkWell(

                        onTap: (){

                          mycubit.signup(context );

                          // var snackbar = SnackBar(content: Text(mycubit.text!,style: TextStyle(
                          //     fontSize: 20,
                          //     fontWeight: FontWeight.bold,
                          //     color: Colors.orange
                          //
                          // ),));
                          //
                          // ScaffoldMessenger.of(context).showSnackBar(snackbar);

                        },

                        child: Container(
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                              child: Text(
                                "Sign Up",
                                style: TextStyle(color: Colors.white, fontSize: 20),
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                              child: Container(
                                height: 1,
                                color: Colors.grey,
                              )),
                          Text(
                            "OR",
                            style: TextStyle(fontSize: 20),
                          ),
                          Expanded(
                              child: Container(
                                height: 1,
                                color: Colors.grey,
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => SignUp()));
                        },
                        child: InkWell(
                          onTap: (){

                            Navigator.push(context, MaterialPageRoute(builder: (context)=>LogIn()));

                          },

                          child: Container(
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(width: 2, color: Colors.orange),
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.orange, fontSize: 20),
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
