import 'package:counter/constants/app_colors.dart';
import 'package:flutter/material.dart';

class NumberWidget extends StatelessWidget {
  const NumberWidget({
    Key key,
    @required this.number,
  }) : super(key: key);

  final String number;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          Navigator.pop(
            context,
          );
        },
        child: Container(
          decoration: BoxDecoration(
            color:  AppColors.Grey.withOpacity(0.8),
            borderRadius: BorderRadius.circular(20),
          ),
          width: 345,
          height: 44,
          child: Center(
            child: Text(
              'Uchunchu bettin Sany: $number ',
              style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: AppColors.Black),
            ),
          ),
        ),
      ),
    );
  }
}
