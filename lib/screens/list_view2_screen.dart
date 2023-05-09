import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final options = const ['Megaman', 'Superman', 'Batman'];
  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('ListView2Screen'),
            elevation: 5,
            backgroundColor: Colors.indigoAccent),
        body: ListView.separated(
          itemCount: options.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(options[index]),
            subtitle: const Text('Subtitle'),
            leading: const Icon(Icons.account_balance_wallet,
                color: Colors.indigoAccent),
            trailing: const Icon(Icons.keyboard_arrow_right),
            onTap: () {
              final game = options[index];
              print(game);
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}
