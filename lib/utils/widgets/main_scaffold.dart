import 'package:flutter/material.dart';
import 'package:flutter_balcoder_firstapp/utils/widgets/drawer_widget.dart';
import 'appbar_widget.dart';  // Asegúrate de importar el nuevo AppbarWidget

class MainScaffold extends StatefulWidget {
  final Widget child;
  final String titlePage;
  final bool showDrawer;
  const MainScaffold(
      {super.key,
      required this.child,
      required this.titlePage,
      this.showDrawer = false});

  @override
  State<MainScaffold> createState() => MainScaffoldState();
}

class MainScaffoldState extends State<MainScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(
        titlePage: widget.titlePage,
        showDrawer: widget.showDrawer,
      ),
      drawer: widget.showDrawer ? const Drawer(child: DrawerWidget()) : null,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: widget.child,
      ),
    );
  }
}
