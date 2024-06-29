import 'package:flutter/material.dart';
import 'package:model_one/Widgets/Search/search_continer.dart';

class TSearch extends StatelessWidget {
  const TSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return const TSearchContainer(
      text: 'Search in Store',
      icon: Icons.search,
    );
  }
}
