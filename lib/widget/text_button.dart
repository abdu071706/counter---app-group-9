


import 'package:counter/constants/app_colors.dart';
import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.Blue
      ),
      child: const Center(
        child: Text(
          '+',
          style: TextStyle(
            fontSize: 30,
            height: 0.60,
            color: AppColors.White,
          ),textAlign: TextAlign.center,
        ),
      ),
    );
  }
}