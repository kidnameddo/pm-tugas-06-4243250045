import 'package:material_ui/material_ui.dart';

import '../data/data_destinasi.dart';
import '../widgets/kartu_destinasi.dart';

class HalamanJelajah extends StatelessWidget {
  const HalamanJelajah({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jelajah Sumatera Utara'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final width = constraints.maxWidth;
          final crossAxisCount = width < 600
              ? 2
              : width < 840
                  ? 3
                  : width < 1024
                      ? 3
                      : 4;

          return GridView.builder(
            key: const Key('grid-destinasi'),
            padding: const EdgeInsets.all(16),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: width < 600 ? 0.68 : 0.75,
            ),
            itemCount: dataDestinasi.length,
            itemBuilder: (context, index) =>
                KartuDestinasi(destinasi: dataDestinasi[index]),
          );
        },
      ),
    );
  }
}
