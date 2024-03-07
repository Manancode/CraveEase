import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:theekhai/pages/bottomnav.dart';
import 'package:theekhai/pages/home_page.dart';
import 'package:theekhai/pages/login_page.dart';
import 'package:theekhai/utilis/routes.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized() ; 
  await Firebase.initializeApp() ; 

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isLoggedIn = false ; 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      // title: 'ohk',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[50],
        primaryColor: Colors.deepOrangeAccent,
        primarySwatch: Colors.deepOrange,
      ),

      home : bottomnav() 
  //     home: isLoggedIn? const HomeScreen() : const loginpage(), 

  //      routes: {
  //   myroutes.loginroute: (context) => loginpage(),
  //   myroutes.homeroute: (context) => HomeScreen(),
  // },
    
   
    );
  }
}