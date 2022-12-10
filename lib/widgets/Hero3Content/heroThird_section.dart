import 'package:flutter/material.dart';
import 'heroThree_export.dart';

class HeroThird extends StatelessWidget {
  const HeroThird({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 266,
      width: double.infinity,
      child: Row(
        children: [
          HeroThirdLeft(),
          HeroThirdRight(),
        ],
      ),
    );
  }
}
