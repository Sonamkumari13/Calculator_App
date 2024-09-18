import 'package:calculator/Component/NumberBtn.dart';
import 'package:calculator/Component/OperatorBtn.dart';
import 'package:calculator/Component/ResultBtn.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var userInput = '';
  var answer = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
            color: Colors.black,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(userInput.toString(), style: TextStyle(fontSize: 30,color: Colors.white),),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(answer.toString(), style: TextStyle(fontSize: 30,color: Colors.orange),),
                        ],
                      )
                    ],
                  ),
                ),

                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        OperatorBtn(Number: 'C',
                          onpress: () {
                          userInput = '';
                          answer = '';
                          setState(() {

                          });
                          }, ),
                        OperatorBtn(Number: '⌫ ',
                          onpress: () {
                          userInput = userInput.substring(0, userInput.length-1);
                          setState(() {

                          });
                          }, ),
                        OperatorBtn(Number: '%',
                          onpress: () {
                          userInput += '%';
                          setState(() {

                          });
                          }, ),
                        OperatorBtn(Number: '÷',
                          onpress: () {
                           userInput += '÷';
                           setState(() {

                           });
                          }, ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        NumberBtn(Number: '7',
                          onpress: () {
                          userInput += '7';
                          setState(() {

                          });
                          },),
                        NumberBtn(Number: '8',
                          onpress: () {
                          userInput += '8';
                          setState(() {

                          });
                          }, ),
                        NumberBtn(Number: '9',
                          onpress: () {
                          userInput += '9';
                          setState(() {

                          });
                          }, ),
                        OperatorBtn(Number: 'x',
                          onpress: () {
                          userInput += 'x';
                          setState(() {

                          });
                          }, ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        NumberBtn(Number: '4',
                          onpress: () {
                          userInput += '4';
                          setState(() {

                          });
                          }, ),
                        NumberBtn(Number: '5',
                          onpress: () {
                          userInput += '5';
                          setState(() {

                          });
                          }, ),
                        NumberBtn(Number: '6',
                          onpress: () {
                          userInput += '6';
                          setState(() {

                          });
                          }, ),
                        OperatorBtn(Number: '-',
                          onpress: () {
                          userInput += '-';
                          setState(() {

                          });
                          }, ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        NumberBtn(Number: '1',
                          onpress: () {
                          userInput += '1';
                          setState(() {

                          });
                          }, ),
                        NumberBtn(Number: '2',
                          onpress: () {
                          userInput += '2';
                          setState(() {

                          });
                          }, ),
                        NumberBtn(Number: '3',
                          onpress: () {
                          userInput += '3';
                          setState(() {

                          });
                          }, ),
                        OperatorBtn(Number: '+',
                          onpress: () {
                          userInput += '+';
                          setState(() {

                          });
                          }, ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        NumberBtn(Number: '00',
                          onpress: () {
                          userInput += '00';
                          setState(() {

                          });
                          }, ),
                        NumberBtn(Number: '0',
                          onpress: () {
                          userInput += '0';
                          setState(() {

                          });
                          }, ),
                        NumberBtn(Number: '.',
                          onpress: () {
                          userInput += '.';
                          setState(() {

                          });
                          }, ),
                        ResultBtn(Number: '=',
                          onpress: () {
                          result();
                          setState(() {

                          });
                          }, ),
                        SizedBox(width: 10,)
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }

  void result() {
    String finalUserInput = userInput.replaceAll('x', '*').replaceAll('÷', '/');
    Parser p = Parser();
    Expression expression = p.parse(finalUserInput);
    ContextModel contextModel = ContextModel();

    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    answer = eval.toString();
  }
}