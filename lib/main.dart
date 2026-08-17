import 'package:flutter/material.dart';
// 1. TAMBAHKAN IMPORT file tempat Anda menaruh kode bottombar (sesuaikan nama filenya)
import 'core/widgets/bottombar.dart'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      // 2. UBAH BAGIAN INI: panggil class yang memegang bottombar
      home: const HomeScreenExample(), 
    );
  }
}