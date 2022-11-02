import 'package:app/widgets/card_swiper.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tienda del ninis"),
        actions: const [],
      ),
      body: Column(
        children: const [CardSwiper()],
      ),
    );
  }
}
