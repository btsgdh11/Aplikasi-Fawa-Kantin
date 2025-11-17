import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  final List<Widget> pages = [
    const BerandaPage(),
    const MenuPage(),
    const KeranjangPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.orange,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black54,
        currentIndex: selectedIndex,
        onTap: (index) => setState(() => selectedIndex = index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda'),
          BottomNavigationBarItem(icon: Icon(Icons.restaurant_menu), label: 'Menu'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Keranjang'),
        ],
      ),
    );
  }
}

class BerandaPage extends StatelessWidget {
  const BerandaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hallo 👋", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextField(
              decoration: InputDecoration(
                hintText: 'Cari Menu Favoritmu...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(16))),
              ),
            ),
            const SizedBox(height: 20),
            const Text("Menu Terlaris Hari Ini", style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            ListTile(
              leading: Image.asset('assets/nasi_kuning.jpg', width: 100),
              title: const Text("Nasi Kuning"),
              subtitle: const Text("Rp 5.000"),
            ),
            ListTile(
              leading: Image.asset('assets/es_teh.jpg', width: 100),
              title: const Text("Es Teh"),
              subtitle: const Text("Rp 3.000"),
            ),
          ],
        ),
      ),
    );
  }
}

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    final menu = [
      {"nama": "Nasi Ayam Bakar", "harga": "Rp 7.000", "gambar": "assets/nasi_ayambakar.jpg"},
      {"nama": "Nasi Goreng", "harga": "Rp 5.000", "gambar": "assets/nasi_goreng.jpg"},
      {"nama": "Nasi Kuning", "harga": "Rp 5.000", "gambar": "assets/nasi_kuning.jpg"},
      {"nama": "Nasi Bakar", "harga": "Rp 5.000", "gambar": "assets/nasi_bakar.jpg"},
      {"nama": "Es Teh", "harga": "Rp 3.000", "gambar": "assets/es_teh.jpg"},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Menu Makanan & Minuman")),
      body: ListView.builder(
        itemCount: menu.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset(menu[index]['gambar']!, width: 50, fit: BoxFit.cover),
            title: Text(menu[index]['nama']!),
            subtitle: Text(menu[index]['harga']!),
          );
        },
      ),
    );
  }
}

class KeranjangPage extends StatelessWidget {
  const KeranjangPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Keranjang")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ListTile(
              leading: Image.asset('assets/nasi_ayambakar.jpg', width: 50),
              title: const Text("Nasi Ayam Bakar"),
              subtitle: const Text("Rp 7.000"),
            ),
            ListTile(
              leading: Image.asset('assets/es_teh.jpg', width: 50),
              title: const Text("Es Teh"),
              subtitle: const Text("Rp 3.000"),
            ),
            const Spacer(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total", style: TextStyle(fontWeight: FontWeight.bold)),
                Text("Rp 9.000", style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text("Konfirmasi Pesanan"),
            )
          ],
        ),
      ),
    );
  }
}
