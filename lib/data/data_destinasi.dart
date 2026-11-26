import 'package:material_ui/material_ui.dart';

import '../models/destinasi.dart';

const List<Destinasi> dataDestinasi = [
  Destinasi(
    id: 1,
    nama: 'Danau Toba',
    lokasi: 'Kabupaten Toba / kawasan Danau Toba',
    kategori: 'Wisata Alam',
    deskripsi:
        'Danau vulkanik berukuran besar yang dikelilingi perbukitan hijau. Kawasan ini menawarkan pemandangan danau, desa sekitar, serta budaya masyarakat Batak.',
    hargaTiket: 'Gratis',
    icon: Icons.water,
    warna: Color(0xFF1976D2),
  ),
  Destinasi(
    id: 2,
    nama: 'Bukit Lawang',
    lokasi: 'Kabupaten Langkat',
    kategori: 'Ekowisata',
    deskripsi:
        'Gerbang wisata ekologi Taman Nasional Gunung Leuser yang terkenal dengan hutan hujan tropis, sungai, dan satwa liar.',
    hargaTiket: 'Perlu konfirmasi',
    icon: Icons.forest,
    warna: Color(0xFF2E7D32),
  ),
  Destinasi(
    id: 3,
    nama: 'Berastagi',
    lokasi: 'Kabupaten Karo',
    kategori: 'Wisata Alam',
    deskripsi:
        'Destinasi pegunungan di dataran tinggi Karo dengan udara sejuk, pasar buah, serta panorama Gunung Sibayak dan Sinabung.',
    hargaTiket: 'Gratis',
    icon: Icons.terrain,
    warna: Color(0xFF7B1FA2),
  ),
  Destinasi(
    id: 4,
    nama: 'Istana Maimun',
    lokasi: 'Kota Medan',
    kategori: 'Wisata Sejarah',
    deskripsi:
        'Istana peninggalan Kesultanan Deli dengan perpaduan arsitektur Melayu, Islam, Timur Tengah, India, Spanyol, dan Italia.',
    hargaTiket: 'Estimasi berlaku; perlu konfirmasi',
    icon: Icons.account_balance,
    warna: Color(0xFFEF6C00),
  ),
  Destinasi(
    id: 5,
    nama: 'Air Terjun Sipiso-piso',
    lokasi: 'Kabupaten Karo',
    kategori: 'Wisata Alam',
    deskripsi:
        'Air terjun berteras tinggi yang mengalir ke lembah di pinggir Danau Toba, dengan titik pandang dan jalur menurun yang indah.',
    hargaTiket: 'Estimasi berlaku; perlu konfirmasi',
    icon: Icons.waterfall_chart,
    warna: Color(0xFF00838F),
  ),
  Destinasi(
    id: 6,
    nama: 'Pulau Samosir',
    lokasi: 'Kabupaten Samosir',
    kategori: 'Wisata Budaya dan Alam',
    deskripsi:
        'Pulau vulkanik di tengah Danau Toba yang kaya budaya Batak, desa tradisional, panorama danau, dan situs sejarah.',
    hargaTiket: 'Gratis',
    icon: Icons.place,
    warna: Color(0xFFC62828),
  ),
];

Destinasi? cariDestinasi(int id) {
  for (final destinasi in dataDestinasi) {
    if (destinasi.id == id) return destinasi;
  }
  return null;
}
