import 'package:flutter/material.dart';
import 'package:flutter_balcoder_firstapp/utils/widgets/responsive_screen_widget.dart';

class ResponsivePageWidget extends StatefulWidget {
  final Widget desktopWidget;
  final Widget mobileWidget;
    const ResponsivePageWidget({super.key, required this.desktopWidget, required this.mobileWidget});

  @override
  State<ResponsivePageWidget> createState() => _ResponsivePageWidgetState();
}

class _ResponsivePageWidgetState extends State<ResponsivePageWidget> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveScreenWidget(
      desktop: widget.desktopWidget,
      smallPhone: widget.mobileWidget,
    );
  }
}