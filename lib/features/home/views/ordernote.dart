import 'package:flutter/material.dart';
import 'package:tes/core/constants/app_colors.dart';

class OrderNotePage extends StatelessWidget {
  const OrderNotePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pesanan Saya',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: AppColors.textPrimary,
            )),
        backgroundColor: AppColors.background,
      ),
      body: const Center(
        child: Text('Order Note Page Content'),
      ),
    );
  }
}