import 'package:flutter/material.dart';
import 'firstPage.dart';
import 'report.dart';
import 'profile.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double screenHeight = 0;
  double screenWidth = 0;

  Color primary =  const Color(0xffeef444c);

  int currentIndex = 1;

  List<IconData> navigationIcons = [
    Icons.home,
    Icons.grading_sharp,
    Icons.person,
  ];

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery
        .of(context)
        .size
        .height;
    screenWidth = MediaQuery
        .of(context)
        .size
        .width;

    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: const [
          FirstPage(),
          Reports(),
          Profile(),
        ],
      ),
      bottomNavigationBar: Container(
        height: 70,
        decoration:  const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(40)),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 10,
              offset: Offset(2, 2),
            )
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for(int i = 0; i < navigationIcons.length; i++)...<Expanded>{
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      currentIndex = i;
                    });
                  },
                  child: Container(
                    height: screenHeight,
                    width: screenWidth,
                    color: Colors.white,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                              navigationIcons[i],
                            color: i == currentIndex ? primary : Colors.black54,
                            size: i == currentIndex ? 30 : 20,
                          ),
                          i == currentIndex ? Container(
                            margin: EdgeInsets.only(top: 6),
                            height: 3,
                            width: 24,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(40)),
                              color: primary,
                            ),
                          ) : const SizedBox(),
                        ],
                      ),
              ),
                  ),
                ),
              ),
            }
          ],
        ),
      ),
    );
  }
}