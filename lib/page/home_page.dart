import 'package:counter/constants/app_colors.dart';
import 'package:counter/page/second_page.dart';
import 'package:counter/widget/container_widget.dart';
import 'package:counter/widget/remove_widget.dart';
import 'package:counter/widget/san_buttom.dart';
import 'package:counter/widget/text_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int san = 0;
  

  void count(int sanber) {
    if (sanber == 9) {
      san++;
    }
    if (sanber == 2) {
      san--;
    }
    setState(() {});
  }

  String word = 'Hello Kandaysin?';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:AppColors.White,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor:AppColors.White,
        title: const Text(
          'Counter App  ',
          style: TextStyle(
            fontSize: 25,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SanButtomWidget(san: san),
          const SizedBox(
            height: 40,
          ),
          ContainerWidget(san: san),
          SizedBox(
            height: 20,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () => count(2),
                child: RemoveWidget(),
              ),
              SizedBox(
                width: 20,
              ),
              TextButton(
                onPressed: () => count(9),
                child: TextButtonWidget(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}