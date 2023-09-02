// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: ColumnWithImage(),
        ),
      ),
    );
  }
}

class ColumnWithImage extends StatelessWidget {
  const ColumnWithImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('images/cat.png', width: 300, height: 300),
              ),
              Text('اسم: قط'),
              Text('العمر: 5'),
              Text('الجنس: ذكر'),
            ],
          ),
        ),
        Positioned(
          left: 30, 
          top: 460, 
          child: Text(
            'الفصيله : الثديات',
          ),
        ),
      ],
    );
  }
}
