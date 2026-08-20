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
          SizedBox(height: 16),
          _buildMenuItem(
            icon: Icons.location_on_outlined,
            title: 'Alamat Saya',
            onTap: () {
              // Aksi ketika menu item ditekan
            },
          ),
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

  Widget _buildMenuItem({required IconData icon, required String title, required VoidCallback onTap}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        decoration: BoxDecoration(
          color: AppColors.background,
          borderRadius: BorderRadius.circular(10),
        ),
      child: Row(
        children: [
          Icon(icon, 
          color: AppColors.textPrimary,
          size: 30
          ),
          SizedBox(width: 16),
          Text(title,
          style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500
          )),
          const Spacer(),
          const Icon(
            Icons.arrow_forward_ios,
            size: 16),
        ],
      ),
      )
    );
  }