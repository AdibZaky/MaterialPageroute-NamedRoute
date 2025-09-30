import 'package:flutter/material.dart';

class TujuanPage extends StatelessWidget {
  const TujuanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange, // background merah/oranye
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("Ini Halaman Tujuan"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Untuk berpindah ke halaman baru, gunakan metode Navigator.push(). "
                    "Metode push() akan menambahkan Route ke dalam tumpukan Route yang dikelola oleh Navigator. "
                    "Route ini dapat dibuat secara kustom atau menggunakan MaterialPageRoute, "
                    "yang memiliki animasi transisi sesuai dengan platform yang digunakan.",
                style: TextStyle(fontSize: 16, color: Colors.white),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 20),
              const Icon(Icons.beach_access, size: 120, color: Colors.white),
              const SizedBox(height: 20),
              const Text(
                "Untuk menutup halaman kedua dan kembali ke halaman pertama, gunakan metode Navigator.pop(). "
                    "Metode pop() akan menghapus Route saat ini dari tumpukan Route yang dikelola oleh Navigator.",
                style: TextStyle(fontSize: 16, color: Colors.white),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("⬅ Kembali ke home"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
