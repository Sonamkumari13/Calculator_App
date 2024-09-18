import 'package:flutter/material.dart';

class OperatorBtn extends StatelessWidget{
  final VoidCallback onpress;
  final String Number;
  const OperatorBtn({super.key, required this.onpress, required this.Number});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Container(
        height: 100,
        width: 100,
        decoration:  BoxDecoration(
          color: Colors.black,
        ),
        child: Center(child: Text(Number,style: TextStyle(color: Colors.orange, fontSize: 30),)),

      ),
    );
  }
}