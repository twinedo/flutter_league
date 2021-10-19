import 'package:flutter/material.dart';
import 'package:football_clubs/model/clubs_model.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:football_clubs/widgets/detail_text.dart';
import 'dart:async';
import 'package:url_launcher/url_launcher.dart';

class DetailScreen extends StatelessWidget {
  final ClubDetail club;

  const DetailScreen({Key? key, required this.club}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 800) {
          return DetailWeb(club: club);
        } else {
          return DetailMobile(club: club);
        }
      },
    );
  }
}

class DetailMobile extends StatefulWidget {
  final ClubDetail club;
  const DetailMobile({Key? key, required this.club}) : super(key: key);

  @override
  State<DetailMobile> createState() => _DetailMobileState();
}

class _DetailMobileState extends State<DetailMobile> {
  bool isVoted = false;
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(child: SmallMediumMode(club: widget.club)),
      ),
    );
  }
}

class DetailWeb extends StatefulWidget {
  final ClubDetail club;
  const DetailWeb({Key? key, required this.club}) : super(key: key);

  @override
  _DetailWebState createState() => _DetailWebState();
}

class _DetailWebState extends State<DetailWeb> {
  bool isVoted = false;
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: screenWidth < 800
                ? SmallMediumMode(club: widget.club)
                : LargeMode(club: widget.club)),
      ),
    );
  }
}

class SmallMediumMode extends StatefulWidget {
  final ClubDetail club;
  const SmallMediumMode({Key? key, required this.club}) : super(key: key);

  @override
  _SmallMediumModeState createState() => _SmallMediumModeState();
}

class _SmallMediumModeState extends State<SmallMediumMode> {
  bool isVoted = false;
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Stack(
          // alignment: Alignment.center,
          children: [
            Align(
                alignment: Alignment.center,
                child: Image.network(widget.club.logo)),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: IconButton(
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    // const FavoriteButton(),
                  ],
                ),
              ),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(top: 16.0),
          child: Text(
            widget.club.name,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 30.0,
            ),
          ),
        ),
        Container(
          // decoration:
          //     BoxDecoration(border: Border.all(color: Colors.black)),
          margin: const EdgeInsets.only(top: 16.0, left: 8.0, right: 8.0),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  DetailText(
                      title: 'Description',
                      descWidgets: Align(
                          alignment: Alignment.center,
                          child: Text(widget.club.description,
                              textAlign: TextAlign.justify))),
                  DetailText(
                      title: 'Manajer', descWidgets: Text(widget.club.manager)),
                  DetailText(
                      title: 'Stadion', descWidgets: Text(widget.club.stadion)),
                  DetailText(
                      title: 'Didirikan',
                      descWidgets: Text(widget.club.didirikan)),
                  DetailText(
                      title: 'Website',
                      descWidgets: Linkify(
                        text: widget.club.website,
                        onOpen: _onOpen,
                      )),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(right: 4.0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: isVoted ? Colors.green : Colors.blue,
                                  onPrimary: Colors.white),
                              onPressed: () {
                                setState(() {
                                  isVoted = !isVoted;
                                });
                              },
                              child: Text(isVoted ? 'Voted' : 'Vote'),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(left: 4.0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary:
                                      isFavorite ? Colors.red : Colors.grey,
                                  onPrimary: Colors.white),
                              onPressed: () {
                                setState(() {
                                  isFavorite = !isFavorite;
                                });
                              },
                              child: Text(isFavorite ? 'Liked' : 'Like'),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  Future<void> _onOpen(LinkableElement link) async {
    if (await canLaunch(link.url)) {
      await launch(link.url);
    } else {
      throw 'Could not be launch $link';
    }
  }
}

class LargeMode extends StatefulWidget {
  final ClubDetail club;
  const LargeMode({Key? key, required this.club}) : super(key: key);

  @override
  _LargeModeState createState() => _LargeModeState();
}

class _LargeModeState extends State<LargeMode> {
  bool isVoted = false;
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Stack(
          // alignment: Alignment.center,
          children: [
            // Align(
            //     alignment: Alignment.center,
            //     child: Image.network(widget.club.logo)),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: IconButton(
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    // const FavoriteButton(),
                  ],
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: Column(
                children: [
                  Image.network(widget.club.logo),
                  Text(
                    widget.club.name,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 30.0,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // decoration:
              //     BoxDecoration(border: Border.all(color: Colors.black)),
              margin: const EdgeInsets.only(top: 16.0, left: 8.0, right: 8.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      DetailText(
                          title: 'Description',
                          descWidgets: Align(
                              alignment: Alignment.center,
                              child: Text(widget.club.description,
                                  textAlign: TextAlign.justify))),
                      DetailText(
                          title: 'Manajer',
                          descWidgets: Text(widget.club.manager)),
                      DetailText(
                          title: 'Stadion',
                          descWidgets: Text(widget.club.stadion)),
                      DetailText(
                          title: 'Didirikan',
                          descWidgets: Text(widget.club.didirikan)),
                      DetailText(
                          title: 'Website',
                          descWidgets: Linkify(
                            text: widget.club.website,
                            onOpen: _onOpen,
                          )),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                margin: const EdgeInsets.only(right: 4.0),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary:
                                          isVoted ? Colors.green : Colors.blue,
                                      onPrimary: Colors.white),
                                  onPressed: () {
                                    setState(() {
                                      isVoted = !isVoted;
                                    });
                                  },
                                  child: Text(isVoted ? 'Voted' : 'Vote'),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: const EdgeInsets.only(left: 4.0),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary:
                                          isFavorite ? Colors.red : Colors.grey,
                                      onPrimary: Colors.white),
                                  onPressed: () {
                                    setState(() {
                                      isFavorite = !isFavorite;
                                    });
                                  },
                                  child: Text(isFavorite ? 'Liked' : 'Like'),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        )
      ],
    );
  }

  Future<void> _onOpen(LinkableElement link) async {
    if (await canLaunch(link.url)) {
      await launch(link.url);
    } else {
      throw 'Could not be launch $link';
    }
  }
}
