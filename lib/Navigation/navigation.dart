import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'bottom_navigation.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {

  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Estado de Animo")),
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: <Widget>[
            Container(color: Colors.deepOrange[200],),
            Container(color: Colors.pink[200],),
            Container(color: Colors.amber[200],),
            Container(color: Colors.blue[200]),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
        items: [
          BottomNavyBarItem(
            icon: Icon(Icons.home),
            title: Text('Menu'),
            activeColor: Colors.deepOrange,
          ),
          BottomNavyBarItem(
              icon: Icon(Icons.music_note),
              title: Text('Categorias'),
              activeColor: Colors.pink
          ),
          BottomNavyBarItem(
              icon: Icon(Icons.person),
              title: Text('Perfil'),
              activeColor: Colors.amber
          ),
          BottomNavyBarItem(
              icon: Icon(Icons.chat),
              title: Text('Chat'),
              activeColor: Colors.blue
          ),
        ],
      ),
    );
  }
}

































































































