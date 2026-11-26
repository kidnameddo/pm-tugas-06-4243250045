import 'package:material_ui/material_ui.dart';

class HalamanTentang extends StatelessWidget {
  const HalamanTentang({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tentang')),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 760),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.map_outlined,
                  size: 72,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(height: 16),
                Text(
                  'Jelajah Sumatera Utara',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 12),
                const Text(
                  'Aplikasi panduan wisata yang membantu pengguna mengenal destinasi alam, sejarah, dan budaya di Sumatera Utara secara ringkas dan mudah dijelajahi.',
                ),
                const SizedBox(height: 20),
                Text(
                  'Tujuan Pengembangan',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 8),
                const Text(
                  'Aplikasi ini dikembangkan sebagai proyek pembelajaran Pemrograman Mobile untuk mempraktikkan model data, GridView responsif, navigasi multi-screen, route berbasis parameter, dan pengelolaan UI Material 3.',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
