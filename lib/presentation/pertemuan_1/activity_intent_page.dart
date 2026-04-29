import 'package:belajar_flutter/helper/appbar.dart';
import 'package:flutter/material.dart';

class ActivityIntentPage extends StatelessWidget {
  const ActivityIntentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Activity & Intent"),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            const Text(
              "Apa itu Activity?",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              "Activity adalah halaman di Android. "
              "Di Flutter, Activity bisa diibaratkan sebagai Widget atau Page.",
            ),

            const SizedBox(height: 20),

            const Text(
              "Apa itu Intent?",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              "Intent digunakan untuk berpindah Activity sambil membawa data. "
              "Di Flutter, kita menggunakan Navigator untuk berpindah halaman.",
            ),

            const SizedBox(height: 30),

            const Divider(),

            const SizedBox(height: 10),

            const Text(
              "Contoh Navigasi (Intent di Flutter)",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const DetailPage(name: "Ramanda Dio"),
                  ),
                );
              },
              child: const Text("Pindah Page + Kirim Data"),
            ),

            const SizedBox(height: 20),

            const Text(
              "Klik tombol di atas untuk melihat contoh pengiriman data "
              "antar halaman seperti Intent di Android.",
            ),
          ],
        ),
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final String name;

  const DetailPage({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Page"),
      ),
      body: Center(
        child: Text(
          "Halo, $name 👋",
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}