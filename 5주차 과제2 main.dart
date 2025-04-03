import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(const CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CalculatorScreen(),
    );
  }
}

class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String expression = "";
  String result = "0";

  void onButtonClick(String text) {
    setState(() {
      if (text == "C") {
        expression = "";
        result = "0";
      } else if (text == "=") {
        try {
          Parser p = Parser();
          Expression exp = p.parse(expression);
          ContextModel cm = ContextModel();
          result = "${exp.evaluate(EvaluationType.REAL, cm)}";
        } catch (e) {
          result = "Error";
        }
      } else {
        expression += text;
      }
    });
  }

  Widget buildButton(String text) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () => onButtonClick(text),
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(20),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        child: Text(text, style: TextStyle(fontSize: 24)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomRight,
              padding: const EdgeInsets.all(20),
              child: Text(expression, style: TextStyle(fontSize: 32, color: Colors.white)),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.bottomRight,
              padding: const EdgeInsets.all(20),
              child: Text(result, style: TextStyle(fontSize: 48, color: Colors.white, fontWeight: FontWeight.bold)),
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Row(children: [buildButton("7"), buildButton("8"), buildButton("9"), buildButton("/")]),
                Row(children: [buildButton("4"), buildButton("5"), buildButton("6"), buildButton("*")]),
                Row(children: [buildButton("1"), buildButton("2"), buildButton("3"), buildButton("-")]),
                Row(children: [buildButton("C"), buildButton("0"), buildButton("="), buildButton("+")]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
