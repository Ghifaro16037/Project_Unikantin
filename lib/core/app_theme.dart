// lib/core/app_theme.dart
import 'package:flutter/material.dart';

/// Design Tokens Warna untuk UniKantin
class AppColors {
  /// Warna utama (Hijau Kantin / Fresh)
  static const Color primary = Color(0xFF2E7D32); // color.primary di Figma
  
  /// Warna peringatan (Status Waspada Budget / Stok)
  static const Color warning = Color(0xFFF5A623); // color.warning di Figma
  
  /// Warna bahaya/error (Status Over Budget / Hapus)
  static const Color danger = Color(0xFFC62828); // color.danger di Figma
  
  /// Warna latar belakang aplikasi
  static const Color background = Color(0xFFF8F9FA);
  
  /// Warna permukaan komponen (Card, Sheet)
  static const Color surface = Color(0xFFFFFFFF);

  AppColors._();
}

/// Design Tokens Jarak (Spacing)
class AppSpace {
  static const double xs = 4.0;
  static const double sm = 8.0;   // space.sm di Figma
  static const double md = 16.0;  // space.md di Figma
  static const double lg = 24.0;  // space.lg di Figma
  static const double xl = 32.0;

  AppSpace._();
}

/// Konfigurasi Tema Utama Aplikasi
class AppTheme {
  static ThemeData get light => ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primary,
          primary: AppColors.primary,
          error: AppColors.danger,
          surface: AppColors.surface,
        ),
        scaffoldBackgroundColor: AppColors.background,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          elevation: 0,
          backgroundColor: AppColors.primary,
          foregroundColor: Colors.white,
        ),
        cardTheme: CardThemeData(
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primary,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpace.md,
              vertical: AppSpace.sm,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      );

  AppTheme._();
}