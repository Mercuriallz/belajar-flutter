import 'package:belajar_flutter/helper/appbar.dart';
import 'package:flutter/material.dart';

class Pertemuan1 extends StatelessWidget {
  const Pertemuan1({super.key});

  Widget sectionTitle(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget sectionContent(String text) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Text(
          text,
          style: const TextStyle(fontSize: 14),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Pengenalan Android",
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView(
            children: [

              sectionTitle("Apa itu Android?"),
              sectionContent(
                "Android adalah sistem operasi berbasis Linux yang bersifat open-source. "
                "Android memungkinkan developer untuk membuat aplikasi mobile dengan fleksibilitas tinggi.",
              ),

              sectionTitle("Karakteristik Android"),
              sectionContent(
                "Open-source\n"
                "Berbasis Linux\n"
                "Digunakan di berbagai device (HP, TV, Wearable)\n"
                "Mendukung berbagai bahasa pemrograman",
              ),

              sectionTitle("Komponen Utama Android"),
              sectionContent(
                "1. Activity => Halaman UI\n"
                "2. Service => Proses di background\n"
                "3. Broadcast Receiver => Menerima event sistem\n"
                "4. Content Provider => Manajemen data",
              ),

              sectionTitle("Activity & Intent"),
              sectionContent(
                "Activity adalah halaman yang dilihat user.\n\n"
                "Intent digunakan untuk berpindah antar Activity "
                "dan bisa membawa data.",
              ),

              sectionTitle("Kenapa Android Populer?"),
              sectionContent(
                "Gratis dan open-source\n"
                "Banyak pengguna di seluruh dunia\n"
                "Fleksibel untuk developer\n"
                "Ekosistem besar (Google Play Store)",
              ),
            ],
          ),
        ),
      ),
    );
  }
}