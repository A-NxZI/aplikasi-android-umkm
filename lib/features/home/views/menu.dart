import 'package:flutter/material.dart';
import 'package:tes/core/constants/app_colors.dart';
import 'package:tes/features/home/widgets/banner.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Column(
      children: [
      ],
      ),
    );
  }
}

  PreferredSizeWidget _buildAppBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(56),
      child: AppBar(
        title: const Text('menu',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20,
              color: AppColors.textPrimary,
            )),
        backgroundColor: AppColors.background,
      ),
    );
  }
