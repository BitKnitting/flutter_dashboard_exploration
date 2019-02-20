//
// I liked the dashboard technique by whatsupcoder in her two youtube
// Videos:
// Part 1:  https://www.youtube.com/watch?v=BEVOiv_j35w
// Part 2:  https://www.youtube.com/watch?v=ABbBYebnwDQ&t=311s
//
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class DashboardPage extends StatefulWidget {
  DashboardPage({this.title});
  final String title;

  @override
  DashboardPageState createState() => DashboardPageState();
}

class DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: _gridUI(),
    );
  }

  Widget _gridUI() {
    return StaggeredGridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 10.0,
      mainAxisSpacing: 10.0,
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      children: <Widget>[
        _myGrid(Icons.graphic_eq, 'savings', Colors.orange),
        _myGrid(Icons.headset, '14 trees', Colors.purple),
        _myGrid(Icons.ac_unit, 'ranking', Colors.blue),
        _myGrid(Icons.school, 'plot', Colors.green),
      ],
      staggeredTiles: [
        StaggeredTile.extent(1, 100.0),
        StaggeredTile.extent(1, 100.0),
        StaggeredTile.extent(1, 100.0),
        StaggeredTile.extent(3, 200.0),
      ],
    );
  }

  Material _myGrid(IconData icon, String heading, Color color) {
    return Material(
      color: Colors.white,
      elevation: 14.0,
      shadowColor: Colors.grey,
      borderRadius: BorderRadius.circular(24.0),
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    heading,
                    style: TextStyle(color: color, fontSize: 18.0),
                  ),
                  Material(
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Icon(
                        icon,
                        color: color,
                        size: 30.0,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
