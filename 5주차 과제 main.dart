import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(color: Colors.red, margin: EdgeInsets.all(2)),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(color: Colors.blue, margin: EdgeInsets.all(2)),
                        ),
                        Expanded(
                          flex: 1,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(color: Colors.black, margin: EdgeInsets.all(2)),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(color: Colors.orange, margin: EdgeInsets.all(2)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(color: Colors.yellow, margin: EdgeInsets.all(2)),
            ),
          ],
        ),
      ),
    );
  }
}
