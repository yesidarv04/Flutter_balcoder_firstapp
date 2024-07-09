import 'package:flutter/material.dart';
import 'package:flutter_balcoder_firstapp/ui/user/user_page.dart';
import 'package:flutter_balcoder_firstapp/utils/widgets/main_scaffold.dart';

class DesktopHomeWidget extends StatefulWidget {
  const DesktopHomeWidget({super.key});

  @override
  State<DesktopHomeWidget> createState() => _DesktopHomeWidgetState();
}

class _DesktopHomeWidgetState extends State<DesktopHomeWidget> {
  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      titlePage: 'Home',
      showDrawer: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Hola Mundo'),
          Container(
            height: 200,
            color: Colors.red,
            padding: const EdgeInsets.all(12.0),
            child: ListView(
              children: [
                const ListTile(
                  title: Text('Hola Mundo'),
                ),
                const ListTile(
                  title: Text('Hola Mundo'),
                ),
                ListTile(
                  title: const Text('Hola Mundo'),
                  onTap: () {
                    Navigator.push( context, MaterialPageRoute(
                        builder: (context) => const UserPage(),
                      ),
                    );
                  },
                ),
              ], 
            ),
          ),
        ],
      ),
    );
  }
}
