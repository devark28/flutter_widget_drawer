import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.blue,
      ),
      child: SafeArea(
        bottom: false,
        child: Scaffold(
          backgroundColor: Colors.white,
          drawer: CustomDrawer(),
          appBar: AppBar(
              title: const Text('Second grid view'),
              backgroundColor: Colors.transparent),
          body: GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            children: [
              // Just trying to double the images without duplicating image arrays.
              for (var img in [
                ...([
                  'assets/image_1.jpg',
                  'assets/image_2.jpeg',
                  'assets/image_3.jpg',
                  'assets/image_4.jpeg',
                  'assets/image_5.jpeg',
                ].map((e) {
                  return [e, e, e, e];
                })).reduce((a, e) {
                  e.shuffle();
                  a.addAll(e);
                  a.shuffle();
                  return a;
                })
              ])
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(img, fit: BoxFit.cover),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
