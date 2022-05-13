import 'package:flutter/material.dart';

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  PageController? controller;
  int currentIndex = 0;

  @override
  void initState() {
    controller = PageController();
    super.initState();
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            scrollDirection: Axis.vertical,
            onPageChanged: onchahged,
            controller: controller,
            children: [
              Container(
                child: Image.network(
                  'https://picsum.photos/200/300',
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                child: Image.network(
                  'https://picsum.photos/200/300',
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                child: Image.network(
                  'https://picsum.photos/200/300',
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 30,
            right: 10,
            child: Column(
              children: [
                Icon(
                  Icons.ac_unit,
                  size: 30,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 10,
                ),
                Icon(
                  Icons.image,
                  size: 30,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 10,
                ),
                Icon(
                  Icons.person,
                  size: 30,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 10,
                ),
                Icon(
                  Icons.person_add,
                  size: 30,
                  color: Colors.white,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  onchahged(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
