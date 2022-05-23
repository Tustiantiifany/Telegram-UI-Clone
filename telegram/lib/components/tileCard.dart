import 'package:flutter/material.dart';

class TileCard extends StatelessWidget {
  String name;
  String subtitle;
  String clock;

  TileCard({
    Key? key,
    required this.name,
    required this.subtitle,
    required this.clock,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('$name'),
      subtitle: Text('$subtitle'),
      leading: CircleAvatar(
        child: Text('I'),
      ),
      trailing: Text('$clock'),
    );
  }
}
