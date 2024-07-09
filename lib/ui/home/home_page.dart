import 'package:flutter/material.dart';
import 'package:flutter_balcoder_firstapp/ui/home/widgets/desktop_home_widget.dart';
import 'package:flutter_balcoder_firstapp/ui/home/widgets/mobile_home_widget.dart';
import 'package:flutter_balcoder_firstapp/utils/widgets/responsive_page_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const ResponsivePageWidget(
      desktopWidget: DesktopHomeWidget(),
      mobileWidget: MobileHomeWidget(),
    );
  }
}
