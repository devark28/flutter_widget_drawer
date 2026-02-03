import 'package:day7/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.blue),
      child: SafeArea(
        bottom: false,
        child: Scaffold(
          backgroundColor: Colors.white,
          drawer: CustomDrawer(),
          appBar: AppBar(
            title: const Text('First grid view'),
            backgroundColor: Colors.transparent,
          ),
        ),
      ),
    );
  }
}
