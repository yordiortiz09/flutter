import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final options = const ['Megaman', 'Superman', 'Batman'];
  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('ListView1Screen')),
        body: ListView(
          children: [
            ...options
                .map((e) => ListTile(
                      title: Text(e),
                      subtitle: const Text('Subtitle'),
                      leading: const Icon(Icons.account_balance_wallet),
                      trailing: const Icon(Icons.keyboard_arrow_right),
                      onTap: () {},
                    ))
                .toList(),
          ],
        ));
  }
}
