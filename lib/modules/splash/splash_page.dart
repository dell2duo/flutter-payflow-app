import 'package:flutter/material.dart';
import 'package:playflow/shared/auth/auth.controller.dart';
import 'package:playflow/shared/themes/app_colors.dart';
import 'package:playflow/shared/themes/app_iamges.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authController = AuthController();
    authController.currentUser(context);

    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
          Center(
            child: Image.asset(AppImages.union),
          ),
          Center(
            child: Image.asset(AppImages.logoFull),
          ),
        ],
      ),
    );
  }
}
