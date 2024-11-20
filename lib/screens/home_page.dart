import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Marketplace'),
          actions: [
            IconButton(icon: const Icon(Icons.search), onPressed: () {}),
            IconButton(icon: const Icon(Icons.shopping_cart), onPressed: () {}),
          ],
        ),
        body: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Widget_buildHeroSection(),
            Widget_buildCarouselSection(),
            Widget_buildGallerySection()
            // _buildFooter(),
          ],
        )));
  }
}

Widget_buildHeroSection() {
  return Container(
    width: double.infinity,
    height: 200,
    decoration: const BoxDecoration(
      image: DecorationImage(
          image: AssetImage('assets/images/hero_image.jpg'), fit: BoxFit.cover),
    ),
    child: const Center(
      child: Text(
        'Welcome to Sophia\'s Marketplace',
        style: TextStyle(
          color: Colors.black,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    ),
  );
}

Widget_buildCarouselSection() {
  // Carousel implementation
  return Container(height: 150, color: Colors.blue[450]);
}

Widget_buildGallerySection() {
  return Container(height: 300, color: Colors.grey[200]);
}
