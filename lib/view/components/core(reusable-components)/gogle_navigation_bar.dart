import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:workshop/view/pages/home_screen.dart';
import 'package:workshop/view/pages/news_screen.dart';
import 'package:workshop/view/pages/setting.dart';


  Widget NAvigationBar({required context ,required int myindex}) {
    int value = 0;
    List<Widget> screen = [HomeScreen() ,NewsScreen(),Setting()];

  return  Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(color: Colors.black, blurRadius: 5)],
      ),
      child: SafeArea(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: GNav(

              selectedIndex: myindex,
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Colors.orange,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[100]!,
              color: Colors.black,
              tabs: [
                GButton(

                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.calendar_month_sharp,
                  text: 'Calender',
                ),
                GButton(
                  icon: Icons.settings,
                  text: 'Setting',
                ),
              ],
              onTabChange: (index) {
               value = index ;
               Navigator.push(context, MaterialPageRoute(builder: (builder)=>screen[value]));

              },
            )
        ),
      ),
    ) ;



  }