
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workshop/view/pages/home_screen.dart';
import 'package:workshop/view/pages/signup_screen.dart';


import '../../viewmodel/login_cubit/login_cubit.dart';
class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return BlocProvider(
  create: (context) => LoginCubit(),
  child: BlocConsumer<LoginCubit, LoginState>(
  listener: (context, state) {
    // TODO: implement listener
  },
  builder: (context, state) {

    LoginCubit mycubit = LoginCubit.get(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(




crossAxisAlignment: CrossAxisAlignment.start,
              children: [



                SizedBox(width: double.infinity,),
SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text("Orange",style: TextStyle(color: Colors.deepOrange ,fontSize: 20,fontWeight: FontWeight.bold),),
                SizedBox(width: 10,),
                Text("Digital Center",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),)

                ],),

                SizedBox(height: 50,),

                Text("Login",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                SizedBox(height: 20,),

                TextFormField(


                  controller:mycubit.mailc,
decoration: InputDecoration(
  errorBorder:  OutlineInputBorder(
borderSide: BorderSide(
color: Colors.green,
    width: 2,
    style: BorderStyle.solid),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(color: Colors.grey, width: 1),
    ),

focusedBorder:OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(10)),
  borderSide: BorderSide(color: Colors.grey, width: 1),
),


  label: Text("E_mail")


),


                ),
SizedBox(height: 15,),
                TextFormField(
                  obscureText: true,
controller: mycubit.passwordc,
                  decoration: InputDecoration(

border: OutlineInputBorder(),
                      errorBorder:  OutlineInputBorder(

                          borderSide: BorderSide(
                              color: Colors.green,
                              width: 2,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20))),

                      enabledBorder: OutlineInputBorder(

                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Colors.grey, width: 1),
                      ),
focusedBorder: OutlineInputBorder(

  borderRadius: BorderRadius.all(Radius.circular(10)),
  borderSide: BorderSide(color: Colors.grey, width: 1),
),


suffixIcon: Icon(Icons.remove_red_eye),

                      label: Text("Password")


                  ),


                ),










                SizedBox(height: 15,),
                Text("Forget Password?",style: TextStyle(color:Colors.orange,fontSize: 20,fontWeight: FontWeight.bold),),
                SizedBox(height: 70,),

                InkWell(
                  onTap: (){


                  mycubit.login(context);




                   // if(mycubit.text == "Log in Successfully")
                   //   {
                   //
                   //     Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                   //
                   //   }


// else
//
// {
//
//   Navigator.push(context, MaterialPageRoute(builder: (context)=>LogIn()));
//
// }








                  },

                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(10)

                    ),
                    child: Center(child: Text("Log in",style: TextStyle(color: Colors.white,fontSize: 20),)),


                  ),
                ),
                SizedBox(height: 10,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Expanded(child: Container(height: 1,color: Colors.grey,)),
                  Text("OR",style: TextStyle(fontSize: 20),),
                  Expanded(child: Container(height: 1,color: Colors.grey,)),

                ],),
                SizedBox(height: 10,),

                InkWell(
                  onTap: (){

                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));

                  },
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 2,color: Colors.orange),
                        borderRadius: BorderRadius.circular(10)

                    ),
                    child: Center(child: Text("Sign Up",style: TextStyle(color: Colors.orange,fontSize: 20),)),


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
