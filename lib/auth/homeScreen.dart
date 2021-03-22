import 'package:flutter/material.dart';
import 'package:tflite_demo/models/objectDetection.dart';
import 'package:tflite_demo/constants/appColors.dart';

class homeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _homeScreenState();
  }
}

class _homeScreenState extends State<homeScreen> {
  int currentPageValue = 0;
  PageController controller = PageController();

  onContinue() {

    Navigator.push(this.context,
        MaterialPageRoute(builder: (context) => objectDetection()));
  }

  static screen() {
    return Padding(
      padding: EdgeInsets.only(left: 15, right: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(

            alignment: Alignment.centerLeft,
            child: Image(
              height: 100,
              image: AssetImage('images/homeVector.png'),
            ),
          ),
          Padding(
            child: Text("Object Detection",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
            padding: EdgeInsets.symmetric(horizontal: 10),
          ),
          SizedBox(
            height: 115,
          ),
        ],
      ),
    );
  }

  final List<Widget> introWidgetsList = <Widget>[screen()];

  Widget circleBar(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8),
      height: isActive ? 12 : 8,
      width: isActive ? 12 : 8,
      decoration: BoxDecoration(
          color: isActive ? appColors.PRIMARY_COLOR : Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(12))),
    );
  }

  void getChangedPageAndMoveBar(int page) {
    currentPageValue = page;
    setState(() {});
  }

  void buttonOnPress() {
    if (currentPageValue == 2) {
      this.onContinue();
      return;
    }
    controller.animateToPage(currentPageValue + 1,
        duration: Duration(milliseconds: 400), curve: Curves.easeInOut);
    setState(() {
      currentPageValue = currentPageValue + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // Need to return false for iOS
        // so you can't swipe from left to right into the initial screen
        return false;
      },
      child: SafeArea(
        child: Scaffold(
            body: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Image(
                    image: AssetImage('images/homeVector.jpeg'),
                  ),

                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  child: Text(
                      "Object Detection App",
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w600)),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  child: FloatingActionButton.extended(
                    backgroundColor: Colors.black,
                    label: Text(
                      " Get Started ",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: this.onContinue,
                    elevation: 0,
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                ),
                SizedBox(
                  height: 100,
                ),
              ],
            )),
      ),
    );
  }
}
