import 'package:counter/second_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int san = 0;
  void countMinus() {
    setState(() {
      san--;
    });
  }

  void countPlus() {
    setState(() {
      san++;
    });
  }

  void count(int sanber) {
    if (sanber == 9) {
      san--;
    }
    if (sanber == 2) {
      san++;
    }
    setState(() {});
  }

  String word = 'Hello Kandaysin?';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
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
          Center(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondPage(san: san),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xffAaAAAA).withOpacity(0.8),
                  borderRadius: BorderRadius.circular(20),
                ),
                width: 345,
                height: 44,
                child: Center(
                  child: Text(
                    'San: $san ',
                    style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Color(0xff000000)),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            decoration: BoxDecoration(
              color: const Color(0xffAaAAAA).withOpacity(0.8),
              borderRadius: BorderRadius.circular(20),
            ),
            width: 345,
            height: 44,
            child: Center(
              child: Text(
                'San: $san  ',
                style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Color(0xff000000)),
              ),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () => count(3),
                child: Container(
                  height: 50,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color(0xff0D61AE),
                  ),
                  child: const Center(
                    child: Text(
                      '-',
                      style: TextStyle(
                        fontSize: 110,
                        height: 0.65,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              TextButton(
                onPressed: () => count(9),
                child: Container(
                  height: 50,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color(0xff0D61AE),
                  ),
                  child: const Center(
                    child: Text(
                      '+',
                      style: TextStyle(
                        fontSize: 90,
                        height: 0.75,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),

          // Container(
          //   color: Colors.blue,
          //   child: IconButton(
          //     color: Colors.red,
          //     onPressed: () {},
          //     icon: const Icon(Icons.add),
          //   ),
          // ),
        ],
      ),
    );
  }
}
