import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProfilePage extends StatelessWidget {
  // Contoh data profil pengguna
  final String name = 'Leo Eka Matra';
  final String email = 'leo.eka@example.com';
  final String address = 'Jl. Kabatmantren, Wringinputih, Muncar, Banyuwangi';
  final String phone = '+62 812-3456-7890';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Menambahkan ikon person di bagian atas
            Center(
              child: Column(
                children: [
                  Icon(
                    Icons.person,
                    size: 100,
                    color: Colors.blueAccent, // Sesuaikan warna dengan tema
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Selamat datang di halaman profil',
                    style: TextStyle(
                      fontSize: 24, 
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20), // Spasi antar elemen

            // Menampilkan nama
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Nama'),
              subtitle: Text(name),
            ),
            Divider(), // Garis pemisah

            // Menampilkan email
            ListTile(
              leading: Icon(Icons.email),
              title: Text('Email'),
              subtitle: Text(email),
            ),
            Divider(),

            // Menampilkan alamat
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Alamat'),
              subtitle: Text(address),
            ),
            Divider(),

            // Menampilkan no telepon
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('No. Telepon'),
              subtitle: Text(phone),
            ),
            Divider(),
            //menambahkan tombol keluar
            SizedBox(height: 40),
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  //navigasi kembali ke halaman login
               Navigator.pop(context);
                },
               icon: Icon(Icons.logout), 
               label: Text('Keluar'),
               style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
               ),
               ),
            ),
          ],
        ),
      ),
    );
  }
}