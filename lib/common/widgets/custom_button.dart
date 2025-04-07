import 'package:ecommerce/constants/global_variable.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const CustomButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: GlobalVariable.orangeRed,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        minimumSize: const Size(double.infinity, 50),
        padding: EdgeInsets.all(10)
      ),

      onPressed: onTap,
      child: Text(text,style: TextStyle(
        color: GlobalVariable.blueBlack
      ),),
    );
  }
}
