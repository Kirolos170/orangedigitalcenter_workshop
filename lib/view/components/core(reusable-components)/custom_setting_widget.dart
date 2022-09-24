import 'package:flutter/material.dart';
class MyCustomSettingWidget extends StatelessWidget {
  String? text1;
   MyCustomSettingWidget({required this.text1}) ;

  @override
  Widget build(BuildContext context) {


    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

            Text("${text1}" , style: TextStyle(fontSize: 20 ,color: Colors.black),),
           IconButton(onPressed: (){}, icon:Icon( Icons.arrow_forward_ios_rounded),color: Colors.grey,),



          ],),

          SizedBox(height: 20,),
          Container(
            width: double.infinity,
            height: 1,
            color: Colors.grey,


          )


        ],


      ),
    );
  }
}
