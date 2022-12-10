import 'package:flutter/material.dart';
import 'dart:math' as math;

import '../HeroContent/hero_export.dart';

class HeroThirdRight extends StatelessWidget {
  const HeroThirdRight({super.key});

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
          padding: EdgeInsets.only(left: 20, right: 0, bottom: 40, top: 10),
          child: Expanded(
            child: Container(
              // color: Colors.deepPurpleAccent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _SubFooterLinks(
                    flix: 1,
                    headertext: "Company",
                    linkOne: "About Us",
                    linkTwo: 'Newsroom',
                    linkThree: 'Legal Notice',
                  ),
                  _SubFooterLinks(
                    flix: 1,
                    headertext: "Customer Information",
                    linkOne: "FAQ",
                    linkTwo: 'Teams of Sale',
                    linkThree: 'Return and Cancellations Policy',
                  ),
                  Transform.rotate(
                    alignment: Alignment.topCenter,
                    angle: -math.pi / 2,
                    child: Container(
                      child: _roundedButton(),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  // Widget get style => TextStyle(fontSize: );
}

class _SubFooterLinks extends StatelessWidget {
  final String headertext;
  final String linkOne;
  final String linkTwo;
  final String linkThree;
  final int flix;
  const _SubFooterLinks({
    super.key,
    required this.headertext,
    required this.linkOne,
    required this.linkTwo,
    required this.linkThree,
    required this.flix,
  });

  @override
  Widget build(BuildContext context) {
    var headerStyle = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
    var navLinkStyle = GoogleFonts.montserrat(color: Colors.grey);

    return Expanded(
      flex: flix,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            headertext,
            style: headerStyle,
          ),
          Text(linkOne, style: navLinkStyle),
          Text(linkTwo, style: navLinkStyle),
          Text(linkThree, style: navLinkStyle),
        ],
      ),
    );
  }
}

class _roundedButton extends StatelessWidget {
  const _roundedButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.0,
      height: 40.0,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          backgroundColor: Colors.black,
        ),
        onPressed: () {
          print('LEARN MORE');
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "back to top".toUpperCase(),
              style: TextStyle(color: Colors.white, fontSize: 13),
            ),
            Icon(
              Icons.east,
              size: 20,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
