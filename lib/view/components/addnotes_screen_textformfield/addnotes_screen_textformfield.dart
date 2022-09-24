import 'package:flutter/material.dart';
class MyTextFormField extends StatelessWidget {
   MyTextFormField({ this.myTextFormFieldhinttext = " ",required this.numoflines , this.labeltext = " " }) ;
  String? myTextFormFieldhinttext;
  int numoflines;
  String? labeltext;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        maxLines:numoflines ,

        decoration: InputDecoration(
            hintText: "${myTextFormFieldhinttext}",
            label: Text(labeltext.toString()),
            hintStyle: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold
            ),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.green,
                    width: 2,
                    style: BorderStyle.solid),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.green,
                    width: 2,
                    style: BorderStyle.solid),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)))),
      ),
    );
  }
}
