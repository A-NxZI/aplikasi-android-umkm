import 'package:flutter/material.dart';
import 'package:tes/core/constants/app_colors.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Akun Saya',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: AppColors.textPrimary,
            )),
        backgroundColor: AppColors.background,
      ),
      body: const Center(child: Text('Profile Page Content')),
    );
  }
}
