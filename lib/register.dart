import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar'),
        backgroundColor: Color.fromARGB(255, 60, 241, 132),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.person, size: 100, color: Colors.blueAccent),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Nama Lengkap', border: OutlineInputBorder()),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Email', border: OutlineInputBorder()),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Password', border: OutlineInputBorder()),
              obscureText: true,
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Confirm Password', border: OutlineInputBorder()),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                //menampilkan pop up atau informasi ketika pendaftaran berhasil 
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Register Berhasil'), 
                    duration: Duration(milliseconds: 200),
                    backgroundColor: Colors.green
                    ),
                );
                //navigasi ke halaman login setelah pop up atau informasi ditampilkan
                Future.delayed(Duration(seconds: 9), () {
                  Navigator.pop(context); //kembali ke halaman login
                });
              },
              child: Text('Daftar'),
            ),
            TextButton(
                onPressed: () {
                 Navigator.pop(context, '/login');
                },
                child: Text(
                  'Sudah punya akun ? Login',
                  style: TextStyle(color: Colors.black),
                ))
          ],
        ),
      ),
    );
  }
}