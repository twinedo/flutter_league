import 'package:flutter/material.dart';
import 'package:football_clubs/detail_screen.dart';
import 'package:football_clubs/model/clubs_model.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(8.0),
              child: Image.asset(
                'images/logo.png',
                width: 250,
              ),
            ),
            Expanded(
              child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                if (constraints.maxWidth <= 600) {
                  return const ClubList(
                    gridCount: 2,
                  );
                } else if (constraints.maxWidth <= 1200) {
                  return const ClubList(gridCount: 4);
                } else {
                  return const ClubList(gridCount: 6);
                }
              }),
            ),
          ],
        ),
      ),
    );
  }
}

class ClubList extends StatelessWidget {
  final int gridCount;
  const ClubList({Key? key, required this.gridCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.count(
        crossAxisCount: gridCount,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        children: premierLeagueList.map((club) {
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(club: club);
              }));
            },
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(flex: 2, child: Image.network(club.logo)),
                  Expanded(
                      child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      club.name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ))
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
