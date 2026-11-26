import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

class HalamanTidakDitemukan extends StatelessWidget {
  const HalamanTidakDitemukan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tidak Ditemukan')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.search_off, size: 72),
              const SizedBox(height: 16),
              Text(
                'Destinasi Tidak Ditemukan',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 12),
              const Text(
                'ID destinasi tidak valid atau data destinasi tidak tersedia.',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              FilledButton.icon(
                onPressed: () => context.go('/jelajah'),
                icon: const Icon(Icons.arrow_back),
                label: const Text('Kembali ke Jelajah'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
