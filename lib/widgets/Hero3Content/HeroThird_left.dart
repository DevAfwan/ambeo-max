import 'package:flutter/material.dart';
import './heroThree_export.dart';

class HeroThirdLeft extends StatelessWidget {
  const HeroThirdLeft({super.key});

  @override
  Widget build(BuildContext context) {
    // socials LINkS
    String Facebook =
        'https://img.icons8.com/external-tanah-basah-glyph-tanah-basah/512/external-facebook-social-media-tanah-basah-glyph-tanah-basah.png';
    String Twitter = 'https://img.icons8.com/ios-filled/512/twitter.png';
    String Instagram =
        'https://img.icons8.com/ios-filled/512/instagram-new--v1.png';
    String Youtube = 'https://img.icons8.com/ios-filled/512/youtube-play.png';

    final BorderSide BXS = BorderSide(
      width: 0.3,
      color: Color.fromARGB(255, 119, 119, 119),
    );
    final int WSize = 20;
    final int HSize = 40;

    return Expanded(
      flex: 1,
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            left: BXS,
            right: BXS,
            bottom: BXS,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 30, left: 30, right: 30, bottom: 70),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 220,
                height: 56,
                // color: Colors.deepPurple,
                child: Image.asset(
                  'assets/images/main.png',
                  alignment: Alignment.centerLeft,
                ),
              ),
              SizedBox(height: 10),
              Container(
                // color: Colors.green,
                width: 100,
                height: 27,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.network(Youtube.toString(), width: 20, height: 30),
                    Image.network(Twitter.toString(), width: 20, height: 30),
                    Image.network(Instagram.toString(), width: 20, height: 30),
                    Image.network(Facebook.toString(), width: 20, height: 30),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
