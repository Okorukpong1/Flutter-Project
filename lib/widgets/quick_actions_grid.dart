import 'package:flutter/material.dart';

class QuickActionsGrid extends StatelessWidget {
  const QuickActionsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 1.4,
      crossAxisCount: 2,
      shrinkWrap: true,
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Color(0XFFFFEDD5),
            borderRadius: BorderRadius.circular(21),
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 10, left: 10),
                  child: Text(
                    "Send",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
              ),
              Positioned(
                left: 15,
                right: 10,
                bottom: 0,
                child: Transform.rotate(
                  angle: 0.01,
                  child: Image.asset(
                    'assets/send-line-skew.png',
                    width: 50,
                    height: 70,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),
        ),

        Container(
          decoration: BoxDecoration(
            color: Color(0xFFF3E8FF),
            borderRadius: BorderRadius.circular(21),
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 10, left: 10),
                  child: Text(
                    "Add",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
              ),
              Positioned(
                top: 50,
                right: 8,
                bottom: 0,
                child: Transform.rotate(
                  angle: 0.01,
                  child: Image.asset(
                    'assets/add.png',
                    width: 90,
                    height: 70,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),
        ),

        Container(
          decoration: BoxDecoration(
            color: Color(0XFFDCFCE7),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 10, left: 10),
                  child: Text(
                    "Pay",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
              ),
              Positioned(
                top: 60,
                right: 20,
                bottom: 0,
                child: Transform.rotate(
                  angle: 0.001,
                  child: Image.asset(
                    'assets/arrow-up-right.png',
                    width: 70,
                    height: 70,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),
        ),

        Container(
          decoration: BoxDecoration(
            color: Color(0xFFFCE7F3),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 10, left: 10),
                  child: Text(
                    "Flash",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
              ),

              Positioned(
                top: 40,
                right: 8,
                bottom: 0,
                child: Transform.rotate(
                  angle: 0.001,
                  child: Image.asset(
                    'assets/flash.png',
                    width: 90,
                    height: 70,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
