import 'package:flutter/material.dart';
import 'package:tes/features/home/views/home.dart';
import 'package:tes/core/constants/app_colors.dart';
import 'package:tes/features/home/views/profile.dart';

/// Custom Bottom Navigation Bar
/// Sesuai desain Figma: tab aktif punya background oranye
/// berbentuk arch (lengkung) di atas, icon lain berwarna oranye polos.
class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const CustomBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  static const Color = AppColors.primary;

  static const List<IconData> _icons = [
    Icons.home_rounded,
    Icons.restaurant, // fork & knife
    Icons.shopping_cart_outlined,
    Icons.assignment_outlined,
    Icons.person_outline,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44 + MediaQuery.of(context).padding.bottom,
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(color: AppColors.background, width: 1),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: List.generate(_icons.length, (index) {
          final bool isActive = index == currentIndex;
          return _NavItem(
            icon: _icons[index],
            isActive: isActive,
            onTap: () => onTap(index),
          );
        }),
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  final IconData icon;
  final bool isActive;
  final VoidCallback onTap;

  const _NavItem({
    required this.icon,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: SizedBox(
        width: 64,
        height: 44,
        child: isActive
            ? _ActiveArch(icon: icon)
            : Center(
                child: Icon(
                  icon,
                  color: AppColors.primary,
                  size: 26,
                ),
              ),
      ),
    );
  }
}

/// Bentuk arch/lengkung oranye di belakang icon aktif (biasanya tab Home)
class _ActiveArch extends StatelessWidget {
  final IconData icon;

  const _ActiveArch({required this.icon});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      clipBehavior: Clip.none,
      children: [
        Positioned(
          bottom: 0,
          child: ClipPath(
            clipper: _ArchClipper(),
            child: Container(
              width: 64,
              height: 44,
              color: AppColors.primary,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 6),
          child: Icon(
            icon,
            color: Colors.white,
            size: 26,
          ),
        ),
      ],
    );
  }
}

/// Custom clipper untuk bentuk setengah lingkaran (arch) di bagian atas
class _ArchClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0, size.height);
    path.lineTo(0, size.height * 0.5);
    path.quadraticBezierTo(
      0,
      0,
      size.width * 0.5,
      0,
    );
    path.quadraticBezierTo(
      size.width,
      0,
      size.width,
      size.height * 0.5,
    );
    path.lineTo(size.width, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

/// ------------------------------------------------------
/// Contoh pemakaian di Scaffold
/// ------------------------------------------------------
class HomeScreenExample extends StatefulWidget {
  const HomeScreenExample({super.key});

  @override
  State<HomeScreenExample> createState() => _HomeScreenExampleState();
}

class _HomeScreenExampleState extends State<HomeScreenExample> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    HomePage( 
      key: PageStorageKey('HomePage'),
    ),
    Center(child: Text('Menu')),
    Center(child: Text('Cart')),
    Center(child: Text('Orders')),
    ProfilePage(
      key: PageStorageKey('ProfilePage'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
      ),
    );
  }
}