import 'package:flutter/material.dart';
import 'package:flutter_shoppe/components/custom_drawer.dart';
import 'package:flutter_shoppe/models/page_manager.dart';
import 'package:flutter_shoppe/screens/login/login_screen.dart';
import 'package:provider/provider.dart';

class BaseScreen extends StatelessWidget {
  BaseScreen({super.key});

  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => PageManager(pageController),
      child: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
           LoginScreen(),
          // Scaffold(
          //   drawer: const CustomDrawer(),
          //   appBar: AppBar(
          //     title: const Text('Home'),
          //   ),
          // ),
          Scaffold(
            drawer: const CustomDrawer(),
            appBar: AppBar(
              title: const Text('Home2'),
            ),
          ),
          Scaffold(
            drawer: const CustomDrawer(),
            appBar: AppBar(
              title: const Text('Home3'),
            ),
          ),
          Scaffold(
            drawer: const CustomDrawer(),
            appBar: AppBar(
              title: const Text('Home4'),
            ),
          ),
        ],
      ),
    );
  }
}
