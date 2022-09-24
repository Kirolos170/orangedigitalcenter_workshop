import 'package:flutter/material.dart';
class MySectionCustomWidget extends StatelessWidget {
   MySectionCustomWidget({required this.text ,required this.day ,required this.starttime ,required this.endtime});
   String? text;
   String? day;
   String? starttime;
   String? endtime;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0,right: 20,left: 20),
      child: Container(

        width: 600,
        height: 165,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(

                  color: Colors.black,
                  offset: const Offset(
                    2,
                    8.0,
                  )

              )



            ]
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),

child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
      SizedBox(width: double.infinity,),

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("${text}" ,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          Row(

            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.access_time_filled_sharp)),
              Text("2hrs",style: TextStyle(fontWeight: FontWeight.bold),)

            ],)

        ],
      ),


      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Text("Section Day",style: TextStyle(color: Colors.grey),),
          Text("Start Time",style: TextStyle(color: Colors.grey),),
          Text("End Time",style: TextStyle(color: Colors.grey),),


        ],),

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,


        children: [
          IconButton(onPressed: (){}, icon: Icon(Icons.calendar_month ,),color: Colors.grey,),
          Text("${day}",style: TextStyle(fontWeight: FontWeight.w500),),

          IconButton(onPressed: (){}, icon: Icon(Icons.access_time_filled_sharp,color: Colors.green,)),
          Text("${starttime}",style: TextStyle(fontWeight: FontWeight.w500),),
          IconButton(onPressed: (){}, icon: Icon(Icons.access_time_filled_sharp,color: Colors.redAccent,)),
          Text("${endtime}",style: TextStyle(fontWeight: FontWeight.w500),)



        ],)


  ],


),



        ),
      ),
    );



  }
}
