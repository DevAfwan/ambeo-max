import 'package:flutter/material.dart';
import 'package:webapp/widgets/widget.dart';

class HeroMiddle_Left extends StatelessWidget {
  const HeroMiddle_Left({super.key});

  @override
  Widget build(BuildContext context) {
    final BorderSide BXS = BorderSide(
      width: 0.3,
      color: Color.fromARGB(255, 119, 119, 119),
    );
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
          padding: EdgeInsets.only(top: 30, left: 30, right: 30, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'A state-of-the-art\ndevice',
                style: GoogleFonts.montserrat(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Experience and shape what deep immersive sound truly means, with our 3D end-to-end technologies and solutions.',
                style: GoogleFonts.montserrat(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 20),
              _roundedButton(),
            ],
          ),
        ),
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
              "learn more".toUpperCase(),
              style: TextStyle(color: Colors.white, fontSize: 13),
            ),
            Icon(
              Icons.keyboard_arrow_right_rounded,
              size: 20,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}


// Experience and shape what deep immersive sound truly means, with our 3D end-to-end technologies and solutions.
// A state-of-the-art\ndevice