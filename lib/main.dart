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

class ColorDemoPage extends StatelessWidget {
  const ColorDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Orange & Blue Theme Demo'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Headline text
              Text(
                'Welcome to ApiCourse!',
                style: textTheme.displaySmall?.copyWith(color: colorScheme.secondary), // Orange headline
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              // Body text
              Text(
                'This app uses a vibrant orange and deep blue color scheme inspired by your image. Designed for readability and a modern feel.',
                style: textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),

              // ElevatedButton showcasing primary/secondary colors
              ElevatedButton(
                onPressed: () {},
                child: const Text('Get Started'),
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {},
                child: const Text('Learn More'),
              ),
              const SizedBox(height: 30),

              // Card demonstrating surface/container colors
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Text(
                        'A Stylish Card',
                        style: textTheme.headlineSmall?.copyWith(color: colorScheme.onPrimary),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'This card uses the primaryContainer color for its background, creating depth against the main background.',
                        style: textTheme.bodyMedium,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 15),
                      Chip(
                        label: Text('New Feature', style: textTheme.labelLarge?.copyWith(color: colorScheme.onSecondary)),
                        backgroundColor: colorScheme.secondary, // Orange chip
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),

              // Visual representation of main colors
              Wrap(
                spacing: 10.0,
                runSpacing: 10.0,
                alignment: WrapAlignment.center,
                children: [
                  ColorBox(color: colorScheme.primary, name: 'Primary (Dark Blue)'),
                  ColorBox(color: colorScheme.primaryContainer, name: 'Primary Container (Dark Purple)'),
                  ColorBox(color: colorScheme.secondary, name: 'Secondary (Vibrant Orange)'),
                  ColorBox(color: colorScheme.tertiary, name: 'Tertiary (Light Teal)'),
                  ColorBox(color: colorScheme.onPrimary, name: 'On Primary (White)'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Helper widget to display a color swatch
class ColorBox extends StatelessWidget {
  final Color color;
  final String name;

  const ColorBox({super.key, required this.color, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey.shade700, width: 1),
      ),
      child: Center(
        child: Text(
          name,
          style: TextStyle(
            color: color.computeLuminance() > 0.5 ? Colors.black : Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
