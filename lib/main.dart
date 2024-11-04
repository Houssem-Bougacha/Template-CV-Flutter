import 'package:flutter/material.dart';
import 'package:houssem_bougacha/components/bottom_nav_bar.dart';
import './pages/home.dart';
import 'pages/about.dart';
import 'pages/contact.dart';
import 'pages/project.dart';
import 'pages/resume.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var selectedIndex = 0;
  bool isDarkMode = false;

  navigateBottomBar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  toggleDarkMode() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  List pages = [
    const Home(),
    const TechStack(),
    const Resume(),
    const Project(),
    const Contact()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Houssem Bougacha',
      theme: isDarkMode ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        bottomNavigationBar: CustomNavBar(onTabChange: (index) => navigateBottomBar(index)),
        body: Stack(
          children: [
            pages[selectedIndex],
            Positioned(
              top: 40,
              right: 20,
              child: IconButton(
                icon: Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode),
                onPressed: toggleDarkMode,
              ),
            ),
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
