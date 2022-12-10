import 'package:webapp/widgets/Hero2Content/HeroMiddle_left.dart';
import 'package:webapp/widgets/Hero2Content/HeroMiddle_right.dart';

import 'heroTwo_export.dart';
import 'package:flutter/material.dart';

class HeroSecond extends StatelessWidget {
  const HeroSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 310,
      width: double.infinity,
      child: Row(
        children: [
          HeroMiddle_Left(),
          HeroMiddle_Right(),
        ],
      ),
    );
  }
}
