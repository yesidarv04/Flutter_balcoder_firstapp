import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  final String username;
  const UserPage({super.key ,required this.username});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Hola Mundo'),
            Container(
              height: 200,
              padding: const EdgeInsets.all(12.0),
              child: ListView(
                children:  [
                  const ListTile(
                    title: Text('Hola Mundo'),
                  ),
                  const ListTile(
                    title: Text('Hola Mundo'),
                  ),
                  ListTile(
                    title: Text(widget.username),
                    onTap: () {
                      Navigator.pop(context);
                    }
                  ),
                ],
              ),
            )
          ]),
    );
  }
}
