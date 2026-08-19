import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tes/core/constants/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

//utama
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildAddressBar(),
        SizedBox(height: 16),
        _buildMainBanner(),
        SizedBox(height: 16),
Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    // --- GANTI MULAI DARI SINI ---
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Sisi Kiri: Menggabungkan Teks Judul & Ikon Panah
          Row(
            children: const [
              Text(
                'Pilih Menu Favoritmu',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: AppColors.textPrimary,
                ),
              ),
              SizedBox(width: 4), // Jarak horizontal ke ikon
              Icon(
                Icons.chevron_right,
                color: AppColors.textPrimary,
                size: 20,
              ),
            ],
          ),
          // Sisi Kanan: Teks Lihat Semua
          const Text(
            'Lihat Semua',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: AppColors.primary,
            ),
          ),
        ],
      ),
    ),
    // --- SAMPAI SINI ---
    
    const SizedBox(height: 16),
    // Kontainer hijau (konten menu) dipindahkan ke bawah setelah header selesai
    Container(
      height: 100,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      color: Colors.green,
    ),
  ],
)
      ],
      )
    );
  }
}


  // logo sama app bar
  PreferredSizeWidget _appBar() {
    return AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        titleSpacing: 16,
        title: Row(
          children: [
            SvgPicture.asset('assets/icons/noodles.svg', width: 32, height: 32),
            const SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'MIEKU',
                  style: TextStyle(
                    color: AppColors.primary,
                    fontFamily: 'Poppins',
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    height: 1.0,
                  ),
                ),
                Text(
                  'spesial untukmu',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                const Icon(
                  Icons.notifications_none,
                  size: 28,
                  color: Colors.black87,
                ),
              ],
            ),
          ),
        ],
    );
  }

  //alamat
  Widget _buildAddressBar() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Container(
        height: 52,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          color: Color(0xFFF6F6F6),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            const Icon(
              Icons.location_on_outlined,
              color: AppColors.primary,
              size: 25,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text(
                    'kirim ke',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      letterSpacing: -0.24,
                      color: Colors.black,
                      height: 1.0,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'JL. Perusahaan no.67 singosari',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      letterSpacing: -0.24,
                      color: Colors.black,
                      height: 1.0,
                    ),
                  ),
                ],
              ),
            ),
            const Icon(Icons.keyboard_arrow_down, size: 22, color: Color(0xFF1E1E1E)),
          ],
        ),
      ),
    );
  }

  //banner
  Widget _buildMainBanner() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        height: 214,
        child: Stack(
          children: [
            PageView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(8),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
