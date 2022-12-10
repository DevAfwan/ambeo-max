import 'package:flutter/material.dart';
import 'package:webapp/widgets/Footer/footer.dart';
import 'package:webapp/widgets/Hero2Content/herosecond_section.dart';
import 'HeroContent/hero_export.dart';
import 'Hero2Content/heroTwo_export.dart';
import 'Hero3Content/heroThree_export.dart';
import 'package:webapp/widgets/widget.dart';

class HeroTitle_Box extends StatefulWidget {
  const HeroTitle_Box({super.key});

  @override
  State<HeroTitle_Box> createState() => HeroTitle_BoxState();
}

class HeroTitle_BoxState extends State<HeroTitle_Box> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeroFirst(),
        HeroSecond(),
        HeroThird(),
        Footer(),
      ],
    );
  }
}
