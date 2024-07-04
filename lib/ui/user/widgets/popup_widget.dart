import 'package:flutter/material.dart';
import 'package:flutter_balcoder_firstapp/utils/theme/app_constants.dart';

class PopupWidget extends StatefulWidget {
  final String name;
  final String email;
  const PopupWidget({super.key, required this.name, required this.email});

  @override
  State<PopupWidget> createState() => _PopupWidgetState();
}

class _PopupWidgetState extends State<PopupWidget> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Information'),
      content: SingleChildScrollView(
        child: Column(
          children: [
            Text('Name: ${widget.name}'),
            Text('Email: ${widget.email}')
          ],
        ),
      ),
      actions: [
        ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: AppConstants.secondColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              )),
            child: const Text('Close')),
      ],
    );
  }
}
