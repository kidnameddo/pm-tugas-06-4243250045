import 'package:material_ui/material_ui.dart';

class HeaderDestinasi extends StatelessWidget {
  const HeaderDestinasi({
    super.key,
    required this.nama,
    required this.kategori,
  });

  final String nama;
  final String kategori;

  @override
  Widget build(BuildContext context) {
    return Text(
      '$nama — $kategori',
      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
