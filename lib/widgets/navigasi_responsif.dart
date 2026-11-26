import 'package:material_ui/material_ui.dart';

class NavigasiResponsif extends StatelessWidget {
  const NavigasiResponsif({
    super.key,
    required this.selectedIndex,
    required this.onDestinationSelected,
  });

  final int selectedIndex;
  final ValueChanged<int> onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    if (width >= 840) {
      return NavigationRail(
        selectedIndex: selectedIndex,
        labelType: NavigationRailLabelType.selected,
        onDestinationSelected: onDestinationSelected,
        destinations: const [
          NavigationRailDestination(
            icon: Icon(Icons.explore_outlined),
            selectedIcon: Icon(Icons.explore),
            label: Text('Jelajah'),
          ),
          NavigationRailDestination(
            icon: Icon(Icons.info_outline),
            selectedIcon: Icon(Icons.info),
            label: Text('Tentang'),
          ),
        ],
      );
    }

    return NavigationBar(
      selectedIndex: selectedIndex,
      onDestinationSelected: onDestinationSelected,
      destinations: const [
        NavigationDestination(
          icon: Icon(Icons.explore_outlined),
          selectedIcon: Icon(Icons.explore),
          label: 'Jelajah',
        ),
        NavigationDestination(
          icon: Icon(Icons.info_outline),
          selectedIcon: Icon(Icons.info),
          label: 'Tentang',
        ),
      ],
    );
  }
}
