import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../viewmodel/support_cubit/support_cubit.dart';

class Support extends StatelessWidget {
  const Support({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SupportCubit(),
      child: BlocConsumer<SupportCubit, SupportState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          SupportCubit mycubit = SupportCubit.get(context);

          return Scaffold(
            appBar: AppBar(

              leading: Icon(Icons.arrow_back_ios, color: Colors.orange,),
              backgroundColor: Colors.white,
              centerTitle: true,
              title: Text("Support", style: TextStyle(
                  fontSize: 20,
                  color: Colors.black
              ),),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 20,),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(

                      decoration: InputDecoration(

                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                                color: Colors.grey, width: 1),
                          ),


                          prefixIcon: Icon(Icons.person),

                          label: Text("Name")


                      ),


                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(

                      decoration: InputDecoration(

                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                                color: Colors.grey, width: 1),
                          ),


                          prefixIcon: Icon(Icons.email),

                          label: Text("E-Mail")


                      ),


                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      maxLines: 8,
                      decoration: InputDecoration(

                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                                color: Colors.grey, width: 1),
                          ),


                          hintText: "Whats making you unhappy"


                      ),


                    ),
                  ),

                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(10)

                      ),
                      child: Center(child: Text("Submit",
                        style: TextStyle(color: Colors.white, fontSize: 20),)),


                    ),
                  ),

                ],
              ),
            ),

          );
        },
      ),
    );
  }
}
