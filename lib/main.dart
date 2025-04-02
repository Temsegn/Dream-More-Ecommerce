import 'package:ecommerce/constants/global_variable.dart';
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
          elevation: 0,
          iconTheme: IconThemeData(color: GlobalVariable.orangeRed),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("Dream more ecommerce")),
        body: Column(
          children: [
            Center(child: Text("hi there")),
            Center(
              child: ElevatedButton(onPressed: () {}, child: Text("Click me")),
            ),
          ],
        ),
      ),
    );
  }
}
