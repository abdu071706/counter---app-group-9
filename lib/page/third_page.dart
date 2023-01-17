import 'package:counter/widget/number_widget.dart';
import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage(this.number);
  final String number;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Page ====> $number'),
      ),
      body: NumberWidget(number: number),
    );
  }
}

