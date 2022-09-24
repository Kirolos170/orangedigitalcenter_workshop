import 'package:flutter/material.dart';
class MyCard extends StatelessWidget {
  MyCard({required this.cardicon,required this.cardtext , required this.onclick});
String? cardtext;
IconData? cardicon;
VoidCallback onclick;
   Color kBackgroundColor = Color(0xFFF1EFF1);

@override
  Widget build(BuildContext context) {


    return  InkWell(
      onTap:onclick ,

      child: Card(color: Colors.white,
        elevation: 8,
        shadowColor: Colors.black,


        shape: OutlineInputBorder(

            borderRadius: BorderRadius.circular(20)

        ),
        child: Container(
          height: 150,
          width: 180,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: double.infinity,),
              Container(
                width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle
                        ,color: kBackgroundColor


                  ),

                  child: Icon(cardicon,color: Colors.deepOrange,size: 40,),),
              SizedBox(height: 10,),
              Text("${cardtext}",style: TextStyle(color: Colors.orange,fontSize: 25,fontWeight: FontWeight.bold),)



            ],


          ),
        ),

      ),
    );
  }
}
