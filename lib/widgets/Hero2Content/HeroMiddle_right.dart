import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HeroMiddle_Right extends StatelessWidget {
  const HeroMiddle_Right({super.key});

  @override
  Widget build(BuildContext context) {
    final BorderSide BXS = BorderSide(
      width: 0.3,
      color: Color.fromARGB(255, 119, 119, 119),
    );
    return Expanded(
      flex: 3,
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border(
            right: BXS,
            bottom: BXS,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 20, top: 20, right: 34, bottom: 20),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
            child: Expanded(
              child: Image.asset(
                'assets/images/ambeo.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
