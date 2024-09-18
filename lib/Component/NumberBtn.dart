import 'package:flutter/material.dart';

class NumberBtn extends StatelessWidget{
  final VoidCallback onpress;
  final String Number;
  const NumberBtn({super.key, required this.onpress, required this.Number});

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
        child: Center(child: Text(Number,style: TextStyle(color: Theme.of(context).colorScheme.onPrimary, fontSize: 30),)),
      ),
    );
  }
}