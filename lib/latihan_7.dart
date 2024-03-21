import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gojek Favorites',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Gojek'),
          backgroundColor: Colors.green,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 10, top: 25),
                  child: const Text(
                    'Your Favorites',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 10, bottom: 10),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      side: MaterialStateProperty.all<BorderSide>(
                        BorderSide(color: Colors.green),
                      ),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.green),
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                        const EdgeInsets.symmetric(horizontal: 20),
                      ),
                    ),
                    child: const Text('Edit'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(20),
                children: [
                  _buildMenuRow([
                    _buildMenuItem('GoRide', 'assets/gojek.jpg', 'GoRide'),
                    _buildMenuItem('GoCar', 'assets/gocar.jpg', 'GoCar'),
                    _buildMenuItem('GoFood', 'assets/gofood.jpg', 'GoFood'),
                    _buildMenuItem('GoSend', 'assets/gosend.jpg', 'GoSend'),
                  ]),
                  const SizedBox(height: 20),
                  _buildMenuRow([
                    _buildMenuItem('GoMart', 'assets/gomart.jpg', 'GoMart'),
                    _buildMenuItem(
                        'GoTagihan', 'assets/gotagihan.jpg', 'GoTagihan'),
                    _buildMenuItem('GoShop', 'assets/goshop.jpg', 'GoShop'),
                    _buildMenuItem('Lainnya', 'assets/lainnya.jpg', 'Lainnya'),
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuRow(List<Widget> children) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: children,
    );
  }

  Widget _buildMenuItem(String title, String imagePath, String featureName) {
    return SizedBox(
      width: 100,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(imagePath, width: 40, height: 40),
            const SizedBox(height: 10),
            Text(
              featureName,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
