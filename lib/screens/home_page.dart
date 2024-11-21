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
            Widget_buildGallerySection(),
            Widget_buildFooter(),
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
  return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5, // Replace with the number of products
        itemBuilder: (context, index) {
          return Container(
              width: 120,
              margin: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.image, size: 50, color: Colors.grey),
                    Text('Product ${index + 1}'),
                  ]));
        },
      ));
}

Widget_buildGallerySection() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
      itemCount: 6, // Replace with your product count
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Center(
            child: Text('Product ${index + 1}'),
          ),
        );
      },
    ),
  );
}

Widget_buildFooter() {
  return Container(
      color: Colors.grey[800],
      padding: const EdgeInsets.all(16.0),
      child: Column(children: [
        const Text(
          'Follow Us',
          style: TextStyle(color: Colors.orange, fontSize: 16),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: const Icon(Icons.facebook, color: Colors.white),
              onPressed: () => print('Go to Facebook'),
            ),
            // IconButton(
            //   icon: const Icon(Icons.instagram, color: Colors.white),
            //   onPressed: () => print('Go to Instagram'),
            // ),
            IconButton(
                icon: const Icon(Icons.tiktok, color: Colors.white),
                onPressed: () => print('Go to Tiktok'))
          ],
        ),
        const SizedBox(height: 8),
        const Text(
          '© 2024 Sophia\'s Marketplace - All Rights Reserved',
          style: TextStyle(color: Colors.white),
        )
      ]));
}
