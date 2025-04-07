import 'package:ecommerce/views/screens/auth_screen.dart';
import 'package:ecommerce/views/screens/sigin_screen.dart';
import 'package:ecommerce/views/screens/signup_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {

  static Route<dynamic> generateRoutes(RouteSettings setting){
    switch(setting.name){
       case AuthScreen.routes:
       return MaterialPageRoute(builder: (_)=>SignInScreen());
       case SignUpScreen.routeName:
       return MaterialPageRoute(builder: (_)=>SignInScreen());
      case SignInScreen.signUpRoute:
       return MaterialPageRoute(builder: (_)=>SignUpScreen());
      
        default:
       return MaterialPageRoute(builder: (_)=>Scaffold(body:Center(child: Text("Page Error")),));
    }

   }
}