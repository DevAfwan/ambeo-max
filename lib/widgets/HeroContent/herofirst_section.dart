import 'package:flutter/material.dart';
import 'hero_export.dart';

class HeroFirst extends StatelessWidget {
  const HeroFirst({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 0.3,
            color: Color.fromARGB(255, 119, 119, 119),
          ),
        ),
      ),
      height: 270,
      padding: EdgeInsets.only(left: 40, right: 50),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Hero_Left(),
          Hero_Right(),
        ],
      ),
    );
  }
}
