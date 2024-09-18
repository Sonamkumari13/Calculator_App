import 'package:flutter/material.dart';

class ResultBtn extends StatelessWidget{
  final VoidCallback onpress;
  final String Number;
  const ResultBtn({super.key, required this.onpress, required this.Number});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Container(
        height: 80,
        width: 80,
        decoration:  BoxDecoration(
          color: Colors.orange.shade700,
          borderRadius: BorderRadius.circular(40)
        ),
        child: Center(child: Text(Number,style: TextStyle(color: Colors.white, fontSize: 40),)),
      ),
    );
  }
}