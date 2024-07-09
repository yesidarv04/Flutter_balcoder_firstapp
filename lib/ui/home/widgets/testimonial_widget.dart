import 'package:flutter/material.dart';

class _TestimonialWidgetState extends StatefulWidget {
  const _TestimonialWidgetState({super.key});

  @override
  State<_TestimonialWidgetState> createState() => __TestimonialWidgetStateState();
}

class __TestimonialWidgetStateState extends State<_TestimonialWidgetState> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 200,
          width: double.infinity,
          child: PageView(
            scrollDirection: Axis.horizontal,
            children: [
              Text('1'),
              Text('2'),
              Text('3'),
            ],
          ),
        ),
      ],
    );
  }
}