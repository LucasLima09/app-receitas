import 'package:flutter/material.dart';

import './categorys_screen.dart';
import 'favorite_screen.dart';
import '../components/main_drawer.dart';
import 'package:app_receitas/models/meal.dart';

class TabsScreen extends StatefulWidget {

  final List<Meal> favoriteMeals;

  const TabsScreen(this.favoriteMeals);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {

  int _selectedScreenIndex = 0;
  late List<Map<String, Object>> _screens;

  @override
  void initState() {
    super.initState();
    _screens = [
    { 
      'title': 'Lista de Categorias',
      'screen': CategorysScreen()
    },
    {
      'title': 'Meus Favoritos',
      'screen': FavoriteScreen(widget.favoriteMeals)
      }
  ];
  }

  _selectScreen(int index){
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_screens[_selectedScreenIndex]['title'] as String),
      ),

      drawer: MainDrawer(),

      body: _screens[_selectedScreenIndex]['screen'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectScreen,
        backgroundColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor: const Color.fromARGB(255, 160, 160, 160),
        selectedItemColor: Colors.white,
        currentIndex: _selectedScreenIndex,
        items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.category),
          label: 'Categorias'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.star),
          label: 'Favoritos'
        )
      ]),
    );
  }
}
