import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tes/core/constants/app_colors.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Column(
        children: [
          SizedBox(height: 16),
          _buildProfileCard(),
        ],
      ),
    );
  }
}

  PreferredSizeWidget _buildAppBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(56),
      child: AppBar(
        title: const Text('Akun Saya',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20,
              color: AppColors.textPrimary,
            )),
        backgroundColor: AppColors.background,
      ),
    );
  }

  Widget _buildProfileCard() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 98,
        decoration: BoxDecoration(
          color: AppColors.background,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            width: 65,
            height: 65,
            margin: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.placeholder,
            ),
            child: const Icon(
              Icons.person, 
              size: 40,
              color: AppColors.background,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Nama Pengguna',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  SizedBox(height: 1),
                  Text(
                    '0800-123-4567',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: AppColors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    )
    );
  }

  Widget _buildMenuItem(IconData icon, String title, VoidCallback onTap) {
    return ListTile(
      leading: Icon(icon, color: AppColors.primary),
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 16,
          color: AppColors.textPrimary,
        ),
      ),
      onTap: onTap,
    );
  }