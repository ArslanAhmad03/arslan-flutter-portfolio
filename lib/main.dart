import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/Views/desktop_view.dart';
import 'package:my_portfolio/Views/mobile_view.dart';
import 'package:my_portfolio/home_view.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Portfolio',
          theme: ThemeData(
            // Use a deeper blue for the primary color (e.g., AppBar, some buttons)
            primaryColor: const Color(0xFF1A2036), // Deep Blue from the image background
            // Define a color scheme using Material 3 (recommended for modern apps)
            colorScheme: const ColorScheme(
              primary: Color(0xFF1A2036), // Deep Blue
              primaryContainer: Color(0xFF3D2E5C), // Dark Purple for subtly different containers
              secondary: Color(0xFFFF6B4A), // Vibrant Orange from the image accent
              secondaryContainer: Color(0xFFFF5722), // Slightly darker orange for accents
              tertiary: Color(0xFF4ECDC4), // Light Teal/Cyan for smaller accents/dots
              surface: Color(0xFF1A2036), // General background color
              error: Colors.red, // Standard error color
              onPrimary: Colors.white, // Text/icons on primary color
              onSecondary: Colors.white, // Text/icons on secondary color
              onSurface: Colors.white, // Text/icons on background color
              onError: Colors.white, // Text/icons on error color
              brightness: Brightness.dark, // Overall theme brightness
            ),
            // Customizing other theme properties
            appBarTheme: const AppBarTheme(
              backgroundColor: Color(0xFF1A2036), // Deep Blue app bar
              foregroundColor: Colors.white, // White text/icons on app bar
              elevation: 0, // No shadow for a flat look
            ),
            scaffoldBackgroundColor: const Color(0xFF1A2036), // Deep Blue background for Scaffold
            cardTheme: CardThemeData(
              color: Color(0xFF3D2E5C).withOpacity(0.8), // Dark purple semi-transparent cards
              elevation: 5,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            ),
            // Customize text theme for better readability on dark background
            textTheme: const TextTheme(
              displayLarge: TextStyle(color: Colors.white, fontSize: 57),
              displayMedium: TextStyle(color: Colors.white, fontSize: 45),
              displaySmall: TextStyle(color: Colors.white, fontSize: 36),
              headlineLarge: TextStyle(color: Colors.white, fontSize: 32),
              headlineMedium: TextStyle(color: Colors.white, fontSize: 28),
              headlineSmall: TextStyle(color: Colors.white, fontSize: 24),
              titleLarge: TextStyle(color: Colors.white, fontSize: 22),
              titleMedium: TextStyle(color: Colors.white, fontSize: 16),
              titleSmall: TextStyle(color: Colors.white, fontSize: 14),
              bodyLarge: TextStyle(color: Color(0xFFE0E0E0), fontSize: 16), // Slightly off-white for body
              bodyMedium: TextStyle(color: Color(0xFFE0E0E0), fontSize: 14),
              bodySmall: TextStyle(color: Color(0xFFB0B0B0), fontSize: 12), // Lighter grey for subtle text
              labelLarge: TextStyle(color: Colors.white, fontSize: 14),
              labelMedium: TextStyle(color: Colors.white, fontSize: 12),
              labelSmall: TextStyle(color: Colors.white, fontSize: 11),
            ),
            // Button theme
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFF6B4A), // Vibrant Orange button background
                foregroundColor: Colors.white, // White text on buttons
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              ),
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                foregroundColor: const Color(0xFF4ECDC4), // Teal for text buttons
              ),
            ),
            // Use Material 3 features
            useMaterial3: true,
            fontFamily: 'CustomFonts',
          ),
          home:  HomeView(mobileBody: MobileView(), desktopBody: DesktopView()),
        );
      }
    );
  }
}
