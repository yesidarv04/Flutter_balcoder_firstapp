import 'package:flutter/material.dart';
import 'package:flutter_balcoder_firstapp/utils/routes/app_routes.dart';
import 'package:flutter_balcoder_firstapp/utils/theme/app_constants.dart';

class AppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String titlePage;
  final bool showDrawer;

  const AppbarWidget({
    super.key,
    required this.titlePage,
    this.showDrawer = false,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppConstants.primaryColor.withOpacity(0.65),
      title: Text(titlePage),
      leading: showDrawer
          ? Builder(
              builder: (context) => IconButton(
                    icon: const Icon(Icons.menu),
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                  ))
          : IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back)),
      actions: [
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, AppRoutes.login);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: AppConstants.primaryColor,
            foregroundColor: AppConstants.secondColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: const Text('Iniciar Sesión'),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
