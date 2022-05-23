import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:telegram/components/tileCard.dart';

class mainView extends StatefulWidget {
  const mainView({Key? key}) : super(key: key);

  @override
  State<mainView> createState() => _mainViewState();
}

class _mainViewState extends State<mainView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
      floatingActionButton: _buildFAB(),
    );
  }
}

AppBar _buildAppBar() {
  return AppBar(
    title: Text('Telegram'),
    leading: IconButton(onPressed: () {}, icon: Icon(Icons.dehaze_rounded)),
    actions: [
      IconButton(
        padding: EdgeInsets.only(right: 20),
        onPressed: () {},
        icon: Icon(Icons.search),
      )
    ],
    backgroundColor: Color(0xFF0088cc),
  );
}

Widget _buildBody() {
  return ListView.separated(
      itemBuilder: (context, index) {
        return TileCard(
            name: 'Ifany Dewi Tustianti',
            subtitle: 'Good Morning !',
            clock: '10.00 a.m');
      },
      separatorBuilder: (context, index) {
        return Divider(
          thickness: 1,
        );
      },
      itemCount: 20);
}

Widget _buildFAB() {
  return FloatingActionButton(
    onPressed: () {},
    child: Icon(Icons.create_rounded),
    backgroundColor: Color(0xFF0088cc),
  );
}
