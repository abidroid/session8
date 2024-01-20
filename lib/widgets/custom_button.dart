import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback? onClick;

  const CustomButton({
    super.key,
    required this.title,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        alignment: Alignment.center,
        width: 200,
        height: 40,
        decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              colors: [Colors.red, Colors.purple],
            )),
        child: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
