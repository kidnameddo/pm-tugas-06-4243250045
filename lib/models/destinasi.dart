import 'package:material_ui/material_ui.dart';

class Destinasi {
  const Destinasi({
    required this.id,
    required this.nama,
    required this.lokasi,
    required this.kategori,
    required this.deskripsi,
    required this.hargaTiket,
    required this.icon,
    required this.warna,
  });

  final int id;
  final String nama;
  final String lokasi;
  final String kategori;
  final String deskripsi;
  final String hargaTiket;
  final IconData icon;
  final Color warna;
}
