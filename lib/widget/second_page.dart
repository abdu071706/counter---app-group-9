import 'package:counter/constants/app_colors.dart';
import 'package:counter/page/third_page.dart';
import 'package:flutter/material.dart';

class SecondPageWidget extends StatelessWidget {
  const SecondPageWidget({
    Key key,
    @required this.san,
  }) : super(key: key);

  final int san;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: ((context) => ThirdPage(
                    san.toString(),
                  )),
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.Grey.withOpacity(0.8),
            borderRadius: BorderRadius.circular(20),
          ),
          width: 345,
          height: 44,
          child: Center(
            child: Text(
              'San: $san',
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