import 'package:material_ui/material_ui.dart';

import '../models/destinasi.dart';
import '../widgets/header_destinasi.dart';

class HalamanDetail extends StatelessWidget {
  const HalamanDetail({super.key, required this.destinasi});

  final Destinasi destinasi;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      appBar: AppBar(
        title: Text(destinasi.nama),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: width < 840
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _VisualDestinasi(destinasi: destinasi),
                    const SizedBox(height: 20),
                    _InformasiDestinasi(destinasi: destinasi),
                  ],
                )
              : Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 5,
                      child: _VisualDestinasi(destinasi: destinasi),
                    ),
                    const SizedBox(width: 24),
                    Expanded(
                      flex: 6,
                      child: _InformasiDestinasi(destinasi: destinasi),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}

class _VisualDestinasi extends StatelessWidget {
  const _VisualDestinasi({required this.destinasi});

  final Destinasi destinasi;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 10,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
              color: destinasi.warna.withValues(alpha: 0.16),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(destinasi.icon, size: 112, color: destinasi.warna),
          ),
          Positioned(
            left: 16,
            top: 16,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                destinasi.kategori,
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _InformasiDestinasi extends StatelessWidget {
  const _InformasiDestinasi({required this.destinasi});

  final Destinasi destinasi;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeaderDestinasi(
          nama: destinasi.nama,
          kategori: destinasi.kategori,
        ),
        const SizedBox(height: 12),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(Icons.location_on_outlined),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                destinasi.lokasi,
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Text(
          'Tentang',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 8),
        Text(destinasi.deskripsi),
        const SizedBox(height: 20),
        Text(
          'Harga tiket',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 8),
        Text(destinasi.hargaTiket),
      ],
    );
  }
}
