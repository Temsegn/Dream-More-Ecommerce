import 'package:ecommerce/constants/global_variable.dart';
import 'package:ecommerce/routes.dart';
import 'package:ecommerce/views/screens/auth_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ' amazon clone ',
      theme: ThemeData(
        scaffoldBackgroundColor: GlobalVariable.backgroundWhite,
        colorScheme: ColorScheme.light(primary: GlobalVariable.orangeRed),
        appBarTheme: AppBarTheme(
          backgroundColor: GlobalVariable.orangeRed,
          elevation: 0,
          iconTheme: IconThemeData(color: GlobalVariable.orangeRed),
        ),
      ),
      onGenerateRoute: (settings) =>AppRoutes.generateRoutes(settings),
      home: Scaffold(
        appBar: AppBar(title: Text("Dream more ecommerce")),
        body: Column(
          children: [
            Center(child: Text("hi there")),
            Builder(
              builder: (context) {
                return Center(
                  child: ElevatedButton(onPressed: () {
                   Navigator.pushNamed(context, AuthScreen.routes);
                
                  }, child: Text("Click me")),
                );
              }
            ),
          ],
        ),
      ),
    );
  }
}
