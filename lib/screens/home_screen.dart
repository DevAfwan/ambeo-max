import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:webapp/widgets/widget.dart';
import '../widgets/custom_app_bar.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({super.key});

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  late ScrollController _controller;
  double pixel = 0.0;

  @override
  void initState() {
    _controller = ScrollController();
    _controller.addListener(() {
      setState(() {
        pixel = _controller.position.pixels;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size ScreenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(ScreenSize.width, 100.0),
        child: CustomAppBar(),
      ),
      body: ListView(
        physics: AlwaysScrollableScrollPhysics(),
        children: [
          HeroTitle_Box(),
        ],
      ),
    );
  }
}
