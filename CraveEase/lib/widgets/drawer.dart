// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, duplicate_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:theekhai/utilis/routes.dart';
// import 'package:flutter/cupertino.dart';


class mydrawer extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    
    return Drawer(
      
      child: Container(
        color: Colors.deepPurple,
      
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8)
              ),
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                
                accountName: Text('Manan Arora'),
                 accountEmail: Text('23bph023@nith.ac.in'),
                 ), 
                ) , 

                ListTile(
                  leading: Icon(
                    CupertinoIcons.home , color: Colors.white,
                  ),
                  title: Text('Home' , style: TextStyle(color: Colors.white , fontSize: 18 , fontWeight: FontWeight.bold),),


                ) , 



             ListTile(
                  leading: Icon(
                    CupertinoIcons.profile_circled , color: Colors.white,
                  ),
                  title: Text('Profile' , style: TextStyle(color: Colors.white , fontSize: 18 , fontWeight: FontWeight.bold),),


                ) , 


                 ListTile(
                  leading: Icon(
                    CupertinoIcons.arrow_left_right_circle_fill , color: Colors.white,
                  ),
                  title: Text('Your Orders' , style: TextStyle(color: Colors.white , fontSize: 18 , fontWeight: FontWeight.bold),),

                  onTap: (){
                    Navigator.pushNamed(context, myroutes.cartroute) ;
                  },
                ) , 



                 ListTile(
                  leading: Icon(
                    CupertinoIcons.airplane, color: Colors.white,
                  ),
                  title: Text('Pickup The Order' , style: TextStyle(color: Colors.white , fontSize: 18 , fontWeight: FontWeight.bold),),


                )



          ],
        ),
      ),
    
    );
  }
}