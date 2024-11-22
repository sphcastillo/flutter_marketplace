import 'package:flutter/material.dart';
import 'package:flutterapp_nov/screens/product_detail_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
        drawer: Drawer(
            child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
              ),
              child: Text(
                'Menu',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Home'),
                onTap: () {
                  Navigator.pop(context); // Closes the drawer
                }),
            ListTile(
              leading: const Icon(Icons.list),
              title: const Text('Catalog'),
              onTap: () {
                Navigator.pushNamed(context, '/catalog');
              },
            )
          ],
        )),
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
  return Container(
    height: 150,
    margin: const EdgeInsets.symmetric(vertical: 32.0),
    padding: const EdgeInsets.symmetric(vertical: 16.0),
    decoration: BoxDecoration(
      color: Colors.red[100],
      border: Border.all(color: Colors.black, width: 2.0),
    ),
    child: Center(
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        scrollDirection: Axis.horizontal,
        itemCount: 5, // Replace with the number of products
        itemBuilder: (context, index) {
          return Container(
            width: 120,
            margin: const EdgeInsets.symmetric(horizontal: 8.0),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.image, size: 50, color: Colors.grey),
                Text('Product ${index + 1}'),
              ],
            ),
          );
        },
      ),
    ),
  );
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
        return GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailPage(productIndex: index),
                ));
          },
          child: AnimatedContainer(
            duration: const Duration(microseconds: 200),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(8.0),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3))
              ],
            ),
            child: Center(
              child: Hero(
                tag: 'product_$index',
                child: Icon(Icons.image, size: 50, color: Colors.grey),
              ),
            ),
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
            IconButton(
              icon: FaIcon(FontAwesomeIcons.instagram, color: Colors.white),
              onPressed: () => print('Go to Instagram'),
            ),
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
