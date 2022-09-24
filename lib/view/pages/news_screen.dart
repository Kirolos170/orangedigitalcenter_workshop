import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../viewmodel/news_cubit/news_cubit.dart';
import '../components/core(reusable-components)/gogle_navigation_bar.dart';
class NewsScreen extends StatelessWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
  create: (context) => NewsCubit(),
  child: BlocConsumer<NewsCubit, NewsState>(
  listener: (context, state) {
    // TODO: implement listener
  },
  builder: (context, state) {
    NewsCubit mycubit = NewsCubit.get(context);
    return Scaffold(
      bottomNavigationBar: NAvigationBar(context: context,myindex: 1),
      body: Column(

     crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 30,),
          SizedBox(width: double.infinity,),
          Text("News" ,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
SizedBox(height: 30,),
      Container(
        width: 370,
        height: 200,
        decoration: BoxDecoration(


        color: Colors.grey

        ,
borderRadius: BorderRadius.circular(10),

      ),
        child: Stack(
          children: [

            Image.asset("images/orange.jpg",fit: BoxFit.fill,width: 370,),

            Positioned(

                child: Text("ODCs",style: TextStyle(color: Colors.orange,fontSize: 20),),top: 15,left: 8,),

            Positioned(top: 5,right: 10,
              child: Container(
                height: 50,
width: 80,
decoration: BoxDecoration(
  color: Colors.orange,
  borderRadius: BorderRadius.circular(10)


),
                child: Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                Icon(Icons.wifi,color: Colors.white,),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: VerticalDivider(thickness: 2,color: Colors.white,),
                ),
                Icon(Icons.access_time_filled,color: Colors.white,),

              ],),),
            ),

            Positioned(left: 5,bottom: 5,
                child: Text("ODC Support All Universities",style: TextStyle(color: Colors.orange,fontSize: 20),))



          ],


        ),


)

        ],

      ),

    );
  },
),
);
  }
}
