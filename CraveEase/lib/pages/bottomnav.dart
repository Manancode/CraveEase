// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
// import 'package:theekhai/models/order.dart';
import 'package:theekhai/pages/home_page.dart';
import 'package:theekhai/pages/myorder.dart';
import 'package:theekhai/pages/pickuporder.dart';
import 'package:theekhai/pages/profile.dart';


class bottomnav extends StatefulWidget {
  const bottomnav({super.key});

  @override
  State<bottomnav> createState() => _bottomnavState();
}

class _bottomnavState extends State<bottomnav> {
  int currentTabIndex= 0 ; 
  late List<Widget> pages ;
  late Widget currentpage ; 
  late HomeScreen homepage ;
  late Profile profile ; 
  late Myorder myorder ; 
  late Pickuporder pickuporder ; 





  @override

  void initState() {
      homepage = HomeScreen() ;
      myorder =   Myorder() ;
      pickuporder = Pickuporder() ; 
      profile = Profile() ; 

      pages = [homepage , myorder , pickuporder , profile] ;  
    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    
  
    return Scaffold(

        bottomNavigationBar: CurvedNavigationBar(
          height: 55, backgroundColor: Colors.black, 
          animationDuration: Duration(milliseconds: 500),
          onTap: (int index){
            setState(() {
              currentTabIndex = index ; 
            });


          },
          
          
          
          
          items: [
            CurvedNavigationBarItem(child:
             Icon( Icons.home_outlined
             , color: Colors.black ,) ,
              
            ) , 
           
               CurvedNavigationBarItem(child:
             Icon( Icons.shopping_bag_outlined  ,color: Colors.black,) ,
              
            ) , 

             CurvedNavigationBarItem(child:
             Icon( Icons.wallet_outlined , color: Colors.black,) ,
             
            ) , 

             CurvedNavigationBarItem(child:
             Icon( Icons.person_outline , color: Colors.black,) ,
             
            ) , 
        




          ] ) , 
          body:  pages[currentTabIndex],

    );
  }
}