import 'package:flutter/material.dart';
import 'screens/sudoku_board.dart';

void main() {
  runApp(const SudokuApp());
}

class SudokuApp extends StatelessWidget {
  const SudokuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sudoku Game',
      home: SudokuBoard(),
    );
  }
}
