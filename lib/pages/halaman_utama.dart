import 'package:material_ui/material_ui.dart';
import 'package:go_router/go_router.dart';

import '../widgets/navigasi_responsif.dart';

class HalamanUtama extends StatelessWidget {
  const HalamanUtama({
    super.key,
    required this.navigationShell,
  });

  final StatefulNavigationShell navigationShell;

  void _onDestinationSelected(int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final selectedIndex = navigationShell.currentIndex;

    if (width >= 840) {
      return Scaffold(
        body: Row(
          children: [
            NavigasiResponsif(
              selectedIndex: selectedIndex,
              onDestinationSelected: _onDestinationSelected,
            ),
            const VerticalDivider(width: 1),
            Expanded(child: navigationShell),
          ],
        ),
      );
    }

    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: NavigasiResponsif(
        selectedIndex: selectedIndex,
        onDestinationSelected: _onDestinationSelected,
      ),
    );
  }
}
