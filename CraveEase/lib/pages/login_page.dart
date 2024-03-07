// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:theekhai/utilis/routes.dart';


class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {

  String email = '' , name = '' , password = '' ; 

  TextEditingController namecontroller = new TextEditingController() ; 
  TextEditingController passwordcontroller = new TextEditingController() ; 
  TextEditingController mailcontroller = new TextEditingController() ; 
  
  final _formkey = GlobalKey<FormState>() ; 

  registration() async {
    if(password!=null){
      try{
        UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password) ;
        ScaffoldMessenger.of(context).showSnackBar((SnackBar(
          content : Text('Registered Successfully' , style: TextStyle(fontSize: 20),) 
        ))) ;

      




      } on FirebaseException catch (e) {
        if(e.code == 'weak-Password') {
          ScaffoldMessenger.of(context).showSnackBar((SnackBar(
            backgroundColor: Colors.orangeAccent,
            content: Text( 'Password Provided is Too Weak' , style: TextStyle(fontSize: 18),
            ),
          ))) ;
        } 
        }
      }
    }
    




      @override
      Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
      }
      
        
  }



  final _formkey = GlobalKey<FormState>() ;  
   movetohome(BuildContext context){
    if (_formkey.currentState!.validate()){
      Navigator.pushNamed(context, myroutes.homeroute) ;  
    }
    
    
    
     } 

  



  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,

          child: Column(
            children: [ 
              SizedBox(
                height: 60, 
              ) , 

              Image.asset("assets/images/delivery.png" , ),
               
              SizedBox(
                height: 50, 
              ) ,
          
          
          
          
          
              Text('Welcome' , style: TextStyle(
                fontSize: 28, fontWeight: FontWeight.bold , 
              ),) ,
          
               Padding(
                 padding: const EdgeInsets.symmetric(vertical: 16 , horizontal: 32 ),
                 child: Column(
                  children: [
                    TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter Your Name" , labelText: 'Name'
                  ),
                  
                  validator: (value){
                    if(value ==null || value.isEmpty ) {
                      return 'Name cannot be empty';
                    } 
                    return null ;
                  },
                  
                  ) ,







                    TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter College-ID" , labelText: 'College-EmailID'
                  ),
                  
                  validator: (value){
                    if(value ==null || value.isEmpty ) {
                      return 'Email-ID cannot be empty';
                    } 
                    return null ;
                  },
                  
                  ) ,
                 
                 
                  TextFormField(
                    obscureText: true ,
                    decoration: InputDecoration(
                      
                      hintText: 'Enter Password' , labelText: 'Password' , 
                    ),
                       validator: (value){
                    if(value == null || value.isEmpty) {
                      return 'Password cannot be empty';
                    } 
                    else if(value.length < 6 ) {
                      return "Password length should be atleast 6 " ;
                    } 
                    return null ;
                  },



                  ) ,
          
                    SizedBox(
                      height: 40,
                    ) ,
          
                    InkWell(
                      onTap: () => movetohome(context),
                      // splashColor: Colors.orange, 
                      
                      child: Container(
                        width:130 , height: 50,  
                        alignment: Alignment.center,
                        child: Text('Login' , style: TextStyle(
                          color: Colors.white,
                          fontSize: 18 , 
                          fontWeight: FontWeight.bold ,
                      
                        ),
                        
                        
                        
                        ),
                      
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(8)
                      
                        ) ,
                      
                      
                      ),
                    ),
          
          
                  ],
                 ),
               )
          
          
            
            ],
          ),
        ),
      )
    );
  }
