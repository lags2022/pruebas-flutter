import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktik/providers/discover_provider.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final discoverProvider = context.watch<DiscoverProvider>();

    // final discoverProvider =
    //     Provider.of<DiscoverProvider>(context, listen: false);

    return Scaffold(
        body: discoverProvider.initialLoading
            ? const Center(
                child: CircularProgressIndicator(
                strokeWidth: 2,
              ))
            : const Placeholder());
  }
}
